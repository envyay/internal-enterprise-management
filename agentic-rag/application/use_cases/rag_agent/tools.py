from qdrant_client import models
from langchain_core.tools import tool
from langchain_core.runnables import RunnableConfig
import config as app_config
from infrastructure.services.vector_db.qdrant_service import QdrantServices
from shared_kernel.execution_logger import log_error, log_tool_end, log_tool_start

class ToolFactory:
    def __init__(self, collection_name: str):
        self.qdrant_services = QdrantServices()
        self.collection = self.qdrant_services.get_collection(collection_name)
    
    def _search_child_chunks(self, query: str, limit: int = app_config.DEFAULT_RETRIEVAL_K, config: RunnableConfig = None) -> str:
        """Search document excerpts for evidence related to the user question.

        Use this as the primary retrieval tool. Each result automatically includes
        the matching child excerpt AND its broader parent context (full section),
        so you have complete context immediately without needing separate parent queries.
        """
        log_tool_start("search_child_chunks", {"query": query, "limit": limit})
        configurable = config.get("configurable", {}) if config else {}
        document_ids = configurable.get("document_ids")

        # Nếu document_ids được truyền vào nhưng rỗng [] -> Không có quyền trên bất kỳ tài liệu nào
        if document_ids is not None and len(document_ids) == 0:
            output = "NO_RELEVANT_CHUNKS: User has no permission to access any documents (documentIds list is empty)."
            log_tool_end("search_child_chunks", output)
            return output

        search_filter = None
        if document_ids:
            search_filter = models.Filter(
                must=[
                    models.FieldCondition(
                        key="metadata.document_id",
                        match=models.MatchAny(any=list(document_ids))
                    )
                ]
            )

        try:
            results = self.collection.similarity_search(
                query,
                k=limit,
                filter=search_filter
            )
            if not results:
                output = "NO_RELEVANT_CHUNKS"
                log_tool_end("search_child_chunks", output)
                return output

            # Tự động lookup Parent Chunks trực tiếp bằng ID (không tốn embedding, O(1) lookup)
            parent_ids = list({str(doc.metadata.get("parent_id")) for doc in results if doc.metadata.get("parent_id")})
            parent_map = {}
            if parent_ids:
                try:
                    records = self.qdrant_services.retrieve_by_ids(app_config.PARENT_COLLECTION, parent_ids)
                    for rec in records:
                        rec_id = str(rec.id)
                        payload = rec.payload or {}
                        content = payload.get("page_content") or ""
                        if content:
                            parent_map[rec_id] = content
                except Exception as ex:
                    log_error("retrieve_parent_context_in_search", ex)

            chunk_blocks = []
            for doc in results:
                p_id = str(doc.metadata.get("parent_id", ""))
                parent_context = parent_map.get(p_id, "").strip()

                block_lines = [
                    f"File Name: {doc.metadata.get('filename') or doc.metadata.get('source', '')}",
                    f"Document ID: {doc.metadata.get('document_id', '')}",
                    f"Parent ID: {p_id}",
                    f"Child Excerpt: {doc.page_content.strip()}",
                ]
                if parent_context:
                    block_lines.append(f"Parent Context (Full Section):\n{parent_context}")
                chunk_blocks.append("\n".join(block_lines))

            output = app_config.CHILD_CHUNK_SEPARATOR.join(chunk_blocks)
            log_tool_end("search_child_chunks", output)
            return output

        except Exception as e:
            log_error("search_child_chunks", e)
            output = f"RETRIEVAL_ERROR: {str(e)}"
            log_tool_end("search_child_chunks", output)
            return output
    
    def _retrieve_parent_chunks(self, parent_id: str, config: RunnableConfig = None) -> str:
        """Retrieve the full parent chunk for a given parent_id as a fallback.

        Usually not needed because search_child_chunks already includes the full parent context.
        """
        log_tool_start("retrieve_parent_chunks", {"parent_id": parent_id})
        try:
            configurable = config.get("configurable", {}) if config else {}
            document_ids = configurable.get("document_ids")

            if document_ids is not None and len(document_ids) == 0:
                output = "NO_PARENT_DOCUMENT: User has no permission to access any documents."
                log_tool_end("retrieve_parent_chunks", output)
                return output

            # Sử dụng direct lookup theo ID thay vì similarity_search chuỗi rỗng
            records = self.qdrant_services.retrieve_by_ids(app_config.PARENT_COLLECTION, [parent_id])
            if not records:
                output = "NO_PARENT_DOCUMENT"
                log_tool_end("retrieve_parent_chunks", output)
                return output

            rec = records[0]
            payload = rec.payload or {}
            doc_id = payload.get("metadata", {}).get("document_id")
            if document_ids is not None and doc_id not in document_ids:
                output = "NO_PARENT_DOCUMENT: Permission denied."
                log_tool_end("retrieve_parent_chunks", output)
                return output

            output = payload.get("page_content", "")
            if not output:
                output = "NO_PARENT_DOCUMENT"

            log_tool_end("retrieve_parent_chunks", output)
            return output
        except Exception as e:
            log_error("retrieve_parent_chunks", e)
            output = f"PARENT_RETRIEVAL_ERROR: {str(e)}"
            log_tool_end("retrieve_parent_chunks", output)
            return output
    
    def create_tools(self) -> list:
        search_tool = tool("search_child_chunks")(self._search_child_chunks)
        retrieve_tool = tool("retrieve_parent_chunks")(self._retrieve_parent_chunks)
        return [search_tool, retrieve_tool]

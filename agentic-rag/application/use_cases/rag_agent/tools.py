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

        Use this as the first retrieval step. Results include parent IDs, file
        names, and short child-chunk excerpts. If excerpts are relevant but too
        fragmented to answer confidently, call retrieve_parent_chunks with the
        returned parent_id.
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

            output = app_config.CHILD_CHUNK_SEPARATOR.join([
                f"Parent ID: {doc.metadata.get('parent_id', '')}\n"
                f"File Name: {doc.metadata.get('filename') or doc.metadata.get('source', '')}\n"
                f"Document ID: {doc.metadata.get('document_id', '')}\n"
                f"Content: {doc.page_content.strip()}"
                for doc in results
            ])
            log_tool_end("search_child_chunks", output)
            return output

        except Exception as e:
            log_error("search_child_chunks", e)
            output = f"RETRIEVAL_ERROR: {str(e)}"
            log_tool_end("search_child_chunks", output)
            return output
    
    def _retrieve_parent_chunks(self, parent_id: str, config: RunnableConfig = None) -> str:
        """Retrieve the full parent chunk for a relevant child search result.

        Use this only after search_child_chunks returns a relevant parent_id and
        the child excerpt needs more surrounding context. Do not call this for
        parent IDs already available in compressed context.
        """
        log_tool_start("retrieve_parent_chunks", {"parent_id": parent_id})
        try:
            configurable = config.get("configurable", {}) if config else {}
            document_ids = configurable.get("document_ids")

            if document_ids is not None and len(document_ids) == 0:
                output = "NO_PARENT_DOCUMENT: User has no permission to access any documents."
                log_tool_end("retrieve_parent_chunks", output)
                return output

            must_conditions = [models.HasIdCondition(has_id=[parent_id])]
            if document_ids:
                must_conditions.append(
                    models.FieldCondition(
                        key="metadata.document_id",
                        match=models.MatchAny(any=list(document_ids))
                    )
                )

            parent_store = self.qdrant_services.get_collection(app_config.PARENT_COLLECTION)
            results = parent_store.similarity_search(
                query="",
                k=1,
                filter=models.Filter(must=must_conditions)
            )
            if not results:
                output = "NO_PARENT_DOCUMENT"
                log_tool_end("retrieve_parent_chunks", output)
                return output

            output = results[0].page_content
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

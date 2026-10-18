from qdrant_client import models
from langchain_core.tools import tool
import config
from infrastructure.services.vector_db.qdrant_service import QdrantServices
from shared_kernel.execution_logger import log_error, log_tool_end, log_tool_start

class ToolFactory:
    def __init__(self, collection_name: str):
        self.qdrant_services = QdrantServices()
        self.collection = self.qdrant_services.get_collection(collection_name)
    
    def _search_child_chunks(self, query: str, limit: int = config.DEFAULT_RETRIEVAL_K) -> str:
        """Search document excerpts for evidence related to the user question.

        Use this as the first retrieval step. Results include parent IDs, file
        names, and short child-chunk excerpts. If excerpts are relevant but too
        fragmented to answer confidently, call retrieve_parent_chunks with the
        returned parent_id.
        """
        log_tool_start("search_child_chunks", {"query": query, "limit": limit})
        try:
            results = self.collection.similarity_search(
                query,
                k=limit,
                # Note: similarity_search might not support score_threshold directly in all langchain_qdrant versions
                # score_threshold=config.RETRIEVAL_SCORE_THRESHOLD,
            )
            if not results:
                output = "NO_RELEVANT_CHUNKS"
                log_tool_end("search_child_chunks", output)
                return output

            output = config.CHILD_CHUNK_SEPARATOR.join([
                f"Parent ID: {doc.metadata.get('parent_id', '')}\n"
                f"File Name: {doc.metadata.get('source', '')}\n"
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
    
    def _retrieve_parent_chunks(self, parent_id: str) -> str:
        """Retrieve the full parent chunk for a relevant child search result.

        Use this only after search_child_chunks returns a relevant parent_id and
        the child excerpt needs more surrounding context. Do not call this for
        parent IDs already available in compressed context.
        """
        log_tool_start("retrieve_parent_chunks", {"parent_id": parent_id})
        try:
            parent_store = self.qdrant_services.get_collection(config.PARENT_COLLECTION)
            # Tìm parent chunk theo ID hoặc parent_id trong metadata
            results = parent_store.similarity_search(
                query="",
                k=1,
                filter=models.Filter(
                    must=[
                        models.HasIdCondition(has_id=[parent_id])
                    ]
                )
            )
            if not results:
                return "NO_PARENT_DOCUMENT"
            return results[0].page_content
        except Exception as e:
            log_error("retrieve_parent_chunks", e)
            return f"PARENT_RETRIEVAL_ERROR: {str(e)}"
    
    def create_tools(self) -> list:
        search_tool = tool("search_child_chunks")(self._search_child_chunks)
        retrieve_tool = tool("retrieve_parent_chunks")(self._retrieve_parent_chunks)
        return [search_tool, retrieve_tool]

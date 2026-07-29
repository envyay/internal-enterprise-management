import uuid
from langchain_text_splitters import RecursiveCharacterTextSplitter, MarkdownHeaderTextSplitter
import config
from langchain_core.documents import Document
from domain.services.chunk_service_interface import IChunkService


class ChunkService(IChunkService):
    def __init__(self):
        self.parent_splitter = MarkdownHeaderTextSplitter(
            headers_to_split_on=config.HEADERS_TO_SPLIT_ON,
            strip_headers=False,
        )

        self.child_splitter = RecursiveCharacterTextSplitter(
            chunk_size=config.CHILD_CHUNK_SIZE,
            chunk_overlap=config.CHILD_CHUNK_OVERLAP,
        )

        self.__min_parent_size = config.MIN_PARENT_SIZE
        self.__max_parent_size = config.MAX_PARENT_SIZE

    def chunk(self, document: Document) -> tuple[list[Document], list[Document]]:
        parents = self._create_parent_chunks(document)
        parents = self._merge_small_parents(parents)
        parents = self._split_large_parents(parents)
        children = self._create_child_chunks(parents)
        return parents, children

    def _create_parent_chunks(self, document: Document) -> list[Document]:
        langchain_docs = self.parent_splitter.split_text(document.page_content)
        parents = []
        for i, lc_doc in enumerate(langchain_docs):
            metadata = document.metadata.copy()
            metadata.update(lc_doc.metadata)
            chunk_id = str(uuid.uuid5(uuid.NAMESPACE_OID, f"{document.id}_p{i}"))
            parents.append(Document(
                id=chunk_id,
                page_content=lc_doc.page_content,
                metadata=metadata
            ))
        return parents

    def _merge_small_parents(self, parents: list[Document]) -> list[Document]:
        if not parents:
            return []
            
        merged_parents = []
        current_doc = parents[0]
        
        for p in parents[1:]:
            if len(current_doc.page_content) < self.__min_parent_size:
                current_doc.page_content += "\n\n" + p.page_content
                current_doc.metadata.update(p.metadata)
            else:
                merged_parents.append(current_doc)
                current_doc = p
                
        merged_parents.append(current_doc)
        return merged_parents

    def _split_large_parents(self, parents: list[Document]) -> list[Document]:
        large_splitter = RecursiveCharacterTextSplitter(
            chunk_size=self.__max_parent_size, 
            chunk_overlap=200
        )
        
        split_parents = []
        for p in parents:
            if len(p.page_content) > self.__max_parent_size:
                chunks = large_splitter.split_text(p.page_content)
                for i, chunk in enumerate(chunks):
                    chunk_id = str(uuid.uuid5(uuid.NAMESPACE_OID, f"{p.id}_{i}"))
                    split_parents.append(Document(
                        id=chunk_id, 
                        page_content=chunk,
                        metadata=p.metadata.copy()
                    ))
            else:
                split_parents.append(p)
        return split_parents

    def _create_child_chunks(self, parents: list[Document]) -> list[Document]:
        children = []
        for p in parents:
            chunks = self.child_splitter.split_text(p.page_content)
            for i, chunk in enumerate(chunks):
                metadata = p.metadata.copy()
                metadata["parent_id"] = p.id
                chunk_id = str(uuid.uuid5(uuid.NAMESPACE_OID, f"{p.id}_c{i}"))
                children.append(Document(
                    id=chunk_id, 
                    page_content=chunk,
                    metadata=metadata
                ))
        return children
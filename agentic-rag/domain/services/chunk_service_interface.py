from abc import ABC, abstractmethod
from langchain_core.documents import Document

class IChunkService(ABC):
    @abstractmethod
    def chunk(self, document: Document) -> tuple[list[Document], list[Document]]:
        pass
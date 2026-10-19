from abc import abstractmethod, ABC
from typing import BinaryIO
from langchain_core.documents import Document


class IParser(ABC):
    @abstractmethod
    def parse(self, stream: BinaryIO, filename: str, document_id: str, referenced_id: str, reference_type: int, object_name: str) -> Document:
        pass


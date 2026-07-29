from abc import abstractmethod, ABC
from typing import BinaryIO
from langchain_core.documents import Document


class IParser(ABC):
    @abstractmethod
    def parse(self, stream: BinaryIO, filename: str) -> Document:
        pass


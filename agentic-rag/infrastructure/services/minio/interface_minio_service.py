from abc import ABC, abstractmethod
from urllib3 import BaseHTTPResponse


class IMinioService(ABC):
    @abstractmethod
    def download_file(self, bucket_name: str, object_name: str, file_path: str) -> None:
        pass

    @abstractmethod
    def get_file_content(self, bucket_name, object_name) -> bytes | None:
        pass

    @abstractmethod
    def get_file_stream(self, bucket_name, object_name) -> BaseHTTPResponse:
        pass

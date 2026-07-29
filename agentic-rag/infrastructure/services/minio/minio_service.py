from minio import Minio, S3Error
from urllib3 import BaseHTTPResponse

import config
from infrastructure.services.minio.interface_minio_service import IMinioService


class MinioServices(IMinioService):
    __client: Minio
    def __init__(self):
        self.__client = Minio(
            endpoint=config.MINIO_ENDPOINT,
            access_key=config.MINIO_ACCESS_KEY,
            secret_key=config.MINIO_SECRET_KEY,
            secure=False,
        )
    def download_file(self, bucket_name: str, object_name: str, file_path: str) -> None:
        try:
            self.__client.fget_object(bucket_name, object_name, file_path)
            print(f"File {object_name} downloaded successfully.")
        except S3Error as e:
            print(f"Error downloading file {object_name}: {e}")

    def get_file_content(self, bucket_name, object_name) -> bytes | None:
        try:
            response = self.__client.get_object(bucket_name, object_name)
            data = response.read()
            return data
        except S3Error as e:
            print(f"Error getting file content: {e}")
        finally:
            if 'response' in locals():
                response.close()
                response.release_conn()

    def get_file_stream(self, bucket_name, object_name) -> BaseHTTPResponse:
        return self.__client.get_object(bucket_name, object_name)

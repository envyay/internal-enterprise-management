from pydantic import BaseModel


class MinioEventDTO(BaseModel):
    bucketName: str
    objectName: str
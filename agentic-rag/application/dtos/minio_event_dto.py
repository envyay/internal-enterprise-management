from pydantic import BaseModel


class MinioEventDTO(BaseModel):
    bucket_name: str
    object_name: str
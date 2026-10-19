from pydantic import BaseModel


class MinioEventDTO(BaseModel):
    bucketName: str
    objectName: str
    documentId: str
    referencedId: str
    referenceType: int
    fileName: str
    parentId: str | None = None
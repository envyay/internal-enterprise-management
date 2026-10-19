from dataclasses import dataclass

from cqrs.requests.request import DCRequest

@dataclass
class IngestDocumentCommand(DCRequest):
    bucket_name: str
    object_name: str
    document_id: str
    referenced_id: str
    reference_type: int
    file_name: str
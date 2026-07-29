from dataclasses import dataclass

from cqrs.requests.request import DCRequest

@dataclass
class IngestDocumentCommand(DCRequest):
    bucket_name: str
    object_name: str
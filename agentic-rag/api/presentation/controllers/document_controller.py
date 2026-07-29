from fastapi import APIRouter, Depends
from cqrs.mediator import RequestMediator

from api.dependencies import get_mediator
from application.dtos.minio_event_dto import MinioEventDTO
from application.use_cases.documents.ingest_document_command import IngestDocumentCommand

router = APIRouter()

@router.post("/minio-webhook")
async def handle_minio_event(
    dto: MinioEventDTO,
    mediator: RequestMediator = Depends(get_mediator),
):
    inserted_ids = await mediator.send(IngestDocumentCommand(bucket_name=dto.bucket_name, object_name=dto.object_name))

    return {
        "message": "Ingest completed",
        "results": [
            {
                "bucket": dto.bucket_name,
                "object": dto.object_name,
                "inserted_ids": inserted_ids,
            }
        ],
    }
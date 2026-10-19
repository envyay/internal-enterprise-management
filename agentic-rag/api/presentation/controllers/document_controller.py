from fastapi import APIRouter, Depends, HTTPException
from cqrs.mediator import RequestMediator

from api.dependencies import get_mediator, get_qdrant_service
from application.dtos.minio_event_dto import MinioEventDTO
from application.use_cases.documents.ingest_document_command import IngestDocumentCommand
from infrastructure.services.vector_db.qdrant_service import QdrantServices
import config

router = APIRouter(tags=["documents & collections"])


@router.post("/minio-webhook")
async def handle_minio_event(
        dto: MinioEventDTO,
        mediator: RequestMediator = Depends(get_mediator),
):
    inserted_ids = await mediator.send(
        IngestDocumentCommand(bucket_name=dto.bucketName, object_name=dto.objectName, document_id=dto.documentId,
                              referenced_id=dto.referencedId, reference_type=dto.referenceType, file_name=dto.fileName))

    return {
        "message": "Ingest completed",
        "results": [
            {
                "bucket": dto.bucketName,
                "object": dto.objectName,
                "inserted_ids": inserted_ids,
            }
        ],
    }


@router.get("/collections/status")
async def get_collections_status(
        qdrant_service: QdrantServices = Depends(get_qdrant_service),
):
    """Kiểm tra số lượng points hiện tại trong các collection."""
    child_count = qdrant_service.get_points_count(config.CHILD_COLLECTION)
    parent_count = qdrant_service.get_points_count(config.PARENT_COLLECTION)
    return {
        "status": "online",
        "collections": {
            config.CHILD_COLLECTION: {"points_count": child_count},
            config.PARENT_COLLECTION: {"points_count": parent_count},
        }
    }


@router.delete("/collections/{collection_name}/clear")
async def clear_collection_endpoint(
        collection_name: str,
        qdrant_service: QdrantServices = Depends(get_qdrant_service),
):
    """Xóa toàn bộ dữ liệu (points) trong 1 collection chỉ định nhưng giữ nguyên cấu hình schema."""
    success = qdrant_service.clear_collection(collection_name)
    if not success:
        raise HTTPException(status_code=404, detail=f"Collection '{collection_name}' does not exist")
    return {
        "message": f"Successfully cleared all points in collection '{collection_name}'",
        "collection": collection_name,
        "remaining_points": qdrant_service.get_points_count(collection_name)
    }


@router.post("/collections/clear-all")
async def clear_all_collections_endpoint(
        qdrant_service: QdrantServices = Depends(get_qdrant_service),
):
    """Xóa toàn bộ dữ liệu trong cả 2 collection (CHILD_COLLECTION và PARENT_COLLECTION) để chuẩn bị nạp mới."""
    results = {}
    for col in [config.CHILD_COLLECTION, config.PARENT_COLLECTION]:
        success = qdrant_service.clear_collection(col)
        results[col] = {
            "cleared": success,
            "remaining_points": qdrant_service.get_points_count(col)
        }
    return {
        "message": "Successfully cleared all data in collections",
        "results": results
    }

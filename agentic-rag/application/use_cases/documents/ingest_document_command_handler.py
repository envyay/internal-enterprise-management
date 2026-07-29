from typing import cast, BinaryIO

from cqrs.requests.request_handler import RequestHandler

from application.use_cases.documents.ingest_document_command import IngestDocumentCommand
from domain.services.chunk_service_interface import IChunkService
from infrastructure.parser.mark_it_down_parser import MarkItDownParser
from infrastructure.services.minio.interface_minio_service import IMinioService
from infrastructure.services.vector_db.qdrant_service import QdrantServices
import config


class IngestDocumentCommandHandler(RequestHandler):

    def __init__(self, minio_services: IMinioService, parser: MarkItDownParser, chunk_service: IChunkService,
                 qdrant_service: QdrantServices):
        self.minio_service = minio_services
        self.parser = parser
        self.chunk_service = chunk_service
        self.qdrant_service = qdrant_service

    async def handle(self, request: IngestDocumentCommand) -> tuple[list[str], list[str]]:
        file_stream = self.minio_service.get_file_stream(request.bucket_name, request.object_name)
        document = self.parser.parse(cast(BinaryIO, cast(object, file_stream)), filename=request.object_name)
        parents, children = self.chunk_service.chunk(document)

        child_store = self.qdrant_service.get_collection(config.CHILD_COLLECTION)
        parent_store = self.qdrant_service.get_collection(config.PARENT_COLLECTION)
        save_children = child_store.add_documents(children)
        save_parents = parent_store.add_documents(parents)

        return save_parents, save_children

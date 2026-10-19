from functools import lru_cache
from typing import TypeVar, Any, Type

from cqrs.mediator import RequestMediator
from cqrs.requests.map import RequestMap

from application.use_cases.documents.ingest_document_command import IngestDocumentCommand
from application.use_cases.documents.ingest_document_command_handler import IngestDocumentCommandHandler
from infrastructure.parser.mark_it_down_parser import MarkItDownParser
from infrastructure.services.chunking.chunk_service import ChunkService
from infrastructure.services.minio.minio_service import MinioServices
from infrastructure.services.vector_db.qdrant_service import QdrantServices

T = TypeVar("T")


class AppContainer:
    def __init__(self) -> None:
        self._instances: dict[type[Any], Any] = {}

    @property
    def external_container(self) -> None:
        return None

    def attach_external_container(self, container: Any) -> None:
        pass

    async def resolve(self, type_: Type[T]) -> T:
        if type_ not in self._instances:
            if type_ is IngestDocumentCommandHandler:
                minio_service = MinioServices()
                parser = MarkItDownParser()
                chunk_service = ChunkService()
                qdrant_service = QdrantServices()

                self._instances[IngestDocumentCommandHandler] = IngestDocumentCommandHandler(
                    minio_services=minio_service,
                    parser=parser,
                    chunk_service=chunk_service,
                    qdrant_service=qdrant_service,
                )
            else:
                raise ValueError(f"Cannot resolve dependency: {type_.__name__}")

        return self._instances[type_]

@lru_cache
def get_mediator() -> RequestMediator:
    request_map = RequestMap()
    request_map.bind(IngestDocumentCommand, IngestDocumentCommandHandler)

    container = AppContainer()

    return RequestMediator(request_map=request_map, container=container)


@lru_cache
def get_qdrant_service() -> QdrantServices:
    return QdrantServices()
from abc import ABC, abstractmethod


class IQdrantService(ABC):
    @abstractmethod
    def get_collection(self, collection_name: str) -> None:
        pass

from typing import List

from langchain_core.documents import Document
from langchain_ollama import OllamaEmbeddings
from langchain_qdrant import FastEmbedSparse, QdrantVectorStore, RetrievalMode
from qdrant_client import QdrantClient

import config


class QdrantServices:
    _instance = None
    __client: QdrantClient
    __dense_embeddings: OllamaEmbeddings
    __sparse_embeddings: FastEmbedSparse

    def __new__(cls, *args, **kwargs):
        if cls._instance is None:
            cls._instance = super().__new__(cls)
            cls._instance.__initialized = False
        return cls._instance

    def __init__(self):
        if getattr(self, "__initialized", False):
            return
        self.__client = QdrantClient(url=config.QDRANT_URL)
        self.__dense_embeddings = OllamaEmbeddings(model=config.DENSE_MODEL, base_url=config.OLLAMA_BASE_URL)
        self.__sparse_embeddings = FastEmbedSparse(model_name=config.SPARSE_MODEL)
        self.__initialized = True

    # def get_collection(self, collection_name: str):
    #     return self.__client.get_collection(collection_name=collection_name)

    def get_collection(self, collection_name: str) -> QdrantVectorStore:
        return QdrantVectorStore(
            client=self.__client,
            collection_name=collection_name,
            embedding=self.__dense_embeddings,
            sparse_embedding=self.__sparse_embeddings,
            retrieval_mode=RetrievalMode.HYBRID,
            sparse_vector_name=config.SPARSE_VECTOR_NAME,
            vector_name="dense"
        )

    def delete_collection(self, collection_name: str) -> None:
        if self.__client.collection_exists(collection_name=collection_name):
            print(f"Removing collection {collection_name}")
            self.__client.delete_collection(collection_name=collection_name)
        else:
            print(f"Unable to remove collection {collection_name}")
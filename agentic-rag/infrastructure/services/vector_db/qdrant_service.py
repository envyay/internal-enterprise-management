from typing import List

from langchain_core.documents import Document
from langchain_huggingface import HuggingFaceEmbeddings
from langchain_qdrant import FastEmbedSparse, QdrantVectorStore, RetrievalMode
from qdrant_client import QdrantClient

import config


class QdrantServices:
    __client: QdrantClient
    __dense_embeddings: HuggingFaceEmbeddings
    __sparse_embeddings: FastEmbedSparse
    def __init__(self):
        self.__client = QdrantClient(url=config.QDRANT_URL)
        self.__dense_embeddings = HuggingFaceEmbeddings(model_name=config.DENSE_MODEL)
        self.__sparse_embeddings = FastEmbedSparse(model_name=config.SPARSE_MODEL)

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
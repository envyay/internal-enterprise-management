import os
import sys

# Prevent langchain_text_splitters from eagerly loading torch & sentence_transformers (saves ~5-7s)
sys.modules.setdefault("sentence_transformers", None)

os.environ.setdefault("HF_HUB_OFFLINE", "1")
os.environ.setdefault("CQRS_SUPPRESS_V4_EOL_WARNING", "1")

from contextlib import asynccontextmanager

from fastapi import FastAPI
from api.dependencies import get_mediator
from api.presentation.chat_router import router as chat_router, get_graph
from api.presentation.controllers.document_controller import router as document_router


@asynccontextmanager
async def lifespan(app: FastAPI):
    # Warm up heavy singletons (embedding model, Qdrant clients, agent graph)
    # at startup so the first request doesn't have to wait for them.
    get_mediator()
    get_graph()
    yield


app = FastAPI(lifespan=lifespan)
app.include_router(chat_router)
app.include_router(document_router)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(
        "main:app",
        host="127.0.0.1",
        port=8000,
        reload=True,
        reload_dirs=["api", "application", "domain", "infrastructure"]
    )

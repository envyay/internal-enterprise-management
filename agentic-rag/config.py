#minio
MINIO_ENDPOINT = "localhost:9000"
MINIO_ACCESS_KEY = "admin"
MINIO_SECRET_KEY = "123456@An"
MINIO_SECURE = False

#qdrant
QDRANT_URL = "localhost:6333"
CHILD_COLLECTION = "iem"
PARENT_COLLECTION = "iem-parent-store"
SPARSE_VECTOR_NAME = "sparse"

import os

#model
DENSE_PROVIDER = "gemini"
DENSE_MODEL = "models/gemini-embedding-001"
DENSE_DIMENSION = 768
SPARSE_MODEL = "Qdrant/bm25"           # BM25 via FastEmbed

OLLAMA_BASE_URL = "http://localhost:11434"

# Gemini Cloud LLM
GEMINI_API_KEY = os.environ.get("GEMINI_API_KEY", "")
LLM_PROVIDER = "gemini"
LLM_MODEL = "gemini-3.5-flash-lite"
# JUDGE_MODEL = "gemini-3.5-flash-lite"
LLM_TEMPERATURE = 0
LLM_SEED = 42

# --- Text Splitter Configuration ---
CHILD_CHUNK_SIZE = 500
CHILD_CHUNK_OVERLAP = 100
MIN_PARENT_SIZE = 2000
MAX_PARENT_SIZE = 4000
HEADERS_TO_SPLIT_ON = [
    ("#", "H1"),
    ("##", "H2"),
    ("###", "H3")
]

# --- Retrieval Configuration ---
RETRIEVAL_SCORE_THRESHOLD = 0.4
DEFAULT_RETRIEVAL_K = 7
CHILD_CHUNK_SEPARATOR = "\n\n<CHILD_CHUNK_BOUNDARY>\n\n"

# --- Agent Configuration ---
MAX_TOOL_CALLS = 8
MAX_ITERATIONS = 10
GRAPH_RECURSION_LIMIT = 50
MAIN_HISTORY_MESSAGES_TO_KEEP = 4
BASE_TOKEN_THRESHOLD = 2000
TOKEN_GROWTH_FACTOR = 0.9
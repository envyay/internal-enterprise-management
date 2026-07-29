from fastapi import FastAPI
from api.presentation.chat_router import router as chat_router
from api.presentation.controllers.document_controller import router as document_router

app = FastAPI()
app.include_router(chat_router)
app.include_router(document_router)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8080)

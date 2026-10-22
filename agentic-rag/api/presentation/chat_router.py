from fastapi import APIRouter, HTTPException
from langchain_core.messages import HumanMessage
import uuid
from langchain_ollama import ChatOllama

import config
from application.use_cases.rag_agent.graph import create_agent_graph
from application.use_cases.rag_agent.tools import ToolFactory

router = APIRouter(prefix="/chat", tags=["chat"])

from pydantic import BaseModel, Field, ConfigDict
from fastapi.responses import StreamingResponse
import json

class ChatRequest(BaseModel):
    query: str
    threadId: str | None = None
    document_ids: list[str] | None = Field(default=None, alias="documentIds")

    model_config = ConfigDict(populate_by_name=True)


# Initialize the graph singleton
def get_graph():
    if not hasattr(get_graph, "instance"):
        if getattr(config, "LLM_PROVIDER", "gemini") == "gemini":
            from langchain_google_genai import ChatGoogleGenerativeAI
            llm = ChatGoogleGenerativeAI(
                model=config.LLM_MODEL,
                google_api_key=config.GEMINI_API_KEY,
                temperature=config.LLM_TEMPERATURE
            )
        else:
            llm = ChatOllama(
                model=config.LLM_MODEL,
                temperature=config.LLM_TEMPERATURE,
                seed=config.LLM_SEED,
                base_url=config.OLLAMA_BASE_URL
            )

        tool_factory = ToolFactory(collection_name=config.CHILD_COLLECTION)
        tools = tool_factory.create_tools()

        get_graph.instance = create_agent_graph(llm, tools)
    return get_graph.instance


def _extract_chunk_text(content) -> str:
    if isinstance(content, str):
        return content
    elif isinstance(content, list):
        parts = []
        for item in content:
            if isinstance(item, dict):
                parts.append(item.get("text", ""))
            elif hasattr(item, "text"):
                parts.append(getattr(item, "text", ""))
            elif isinstance(item, str):
                parts.append(item)
        return "".join(parts)
    return ""


@router.post("/")
async def chat_endpoint(request: ChatRequest):
    active_thread_id = request.threadId or str(uuid.uuid4())

    # Fast check: Nếu ASP.NET Core truyền danh sách rỗng -> user không có quyền trên bất kỳ tài liệu nào
    if request.document_ids is not None and len(request.document_ids) == 0:
        return {
            "response": "Bạn chưa được cấp quyền truy cập vào bất kỳ tài liệu nào để tra cứu.",
            "thread_id": active_thread_id
        }

    graph = get_graph()
    config_dict = {
        "configurable": {
            "thread_id": active_thread_id,
            "document_ids": request.document_ids
        }
    }

    try:
        inputs = {
            "messages": [HumanMessage(content=request.query)],
            "document_ids": request.document_ids
        }
        final_state = graph.invoke(inputs, config=config_dict)

        messages = final_state.get("messages", [])
        if messages:
            last_msg = messages[-1].content
            if isinstance(last_msg, list):
                text_parts = [item.get("text", "") if isinstance(item, dict) else str(item) for item in last_msg]
                last_msg = "".join(text_parts)
            return {"response": str(last_msg), "thread_id": active_thread_id}
        else:
            return {"response": "No response generated.", "thread_id": active_thread_id}

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


@router.post("/stream")
async def chat_stream_endpoint(request: ChatRequest):
    active_thread_id = request.threadId or str(uuid.uuid4())

    # Fast check: Nếu danh sách document_ids rỗng -> trả về ngay thông báo không có quyền
    if request.document_ids is not None and len(request.document_ids) == 0:
        async def empty_perm_generator():
            yield f"data: {json.dumps({'type': 'token', 'content': 'Bạn chưa được cấp quyền truy cập vào bất kỳ tài liệu nào để tra cứu.'}, ensure_ascii=False)}\n\n"
            yield f"data: {json.dumps({'type': 'done', 'thread_id': active_thread_id}, ensure_ascii=False)}\n\n"

        return StreamingResponse(
            empty_perm_generator(),
            media_type="text/event-stream",
            headers={
                "Cache-Control": "no-cache",
                "Connection": "keep-alive",
                "X-Accel-Buffering": "no"
            }
        )

    graph = get_graph()
    config_dict = {
        "configurable": {
            "thread_id": active_thread_id,
            "document_ids": request.document_ids
        }
    }
    inputs = {
        "messages": [HumanMessage(content=request.query)],
        "document_ids": request.document_ids
    }

    async def event_generator():
        try:
            # Emit initial status
            yield f"data: {json.dumps({'type': 'status', 'content': 'Đang tiếp nhận và phân tích câu hỏi...'}, ensure_ascii=False)}\n\n"

            async for event in graph.astream_events(inputs, config=config_dict, version="v2"):
                kind = event.get("event")
                name = event.get("name", "")
                meta = event.get("metadata", {})
                node = meta.get("langgraph_node")

                # Emit status when tool search starts
                if kind == "on_tool_start":
                    tool_name = name or "tìm kiếm"
                    yield f"data: {json.dumps({'type': 'status', 'content': f'Đang tra cứu dữ liệu ({tool_name})...'}, ensure_ascii=False)}\n\n"

                # Handle clarification request when question is not clear
                elif kind == "on_chain_end" and name == "rewrite_query":
                    output = event.get("data", {}).get("output", {})
                    if isinstance(output, dict) and output.get("questionIsClear") is False:
                        messages = output.get("messages", [])
                        if messages:
                            clarification_text = _extract_chunk_text(messages[-1].content)
                            if clarification_text:
                                yield f"data: {json.dumps({'type': 'token', 'content': clarification_text}, ensure_ascii=False)}\n\n"

                # Stream answer tokens from orchestrator or aggregate_answers
                elif kind == "on_chat_model_stream" and node in ["orchestrator", "aggregate_answers"]:
                    chunk = event.get("data", {}).get("chunk")
                    if chunk:
                        # Skip tool call generation chunks
                        if getattr(chunk, "tool_call_chunks", None):
                            continue
                        text = _extract_chunk_text(getattr(chunk, "content", ""))
                        if text:
                            yield f"data: {json.dumps({'type': 'token', 'content': text}, ensure_ascii=False)}\n\n"

            # Emit final event with thread_id
            yield f"data: {json.dumps({'type': 'done', 'thread_id': active_thread_id}, ensure_ascii=False)}\n\n"

        except Exception as e:
            yield f"data: {json.dumps({'type': 'error', 'content': str(e)}, ensure_ascii=False)}\n\n"

    return StreamingResponse(
        event_generator(),
        media_type="text/event-stream",
        headers={
            "Cache-Control": "no-cache",
            "Connection": "keep-alive",
            "X-Accel-Buffering": "no"
        }
    )


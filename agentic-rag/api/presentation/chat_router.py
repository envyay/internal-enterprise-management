from fastapi import APIRouter, HTTPException
from pydantic import BaseModel
from langchain_core.messages import HumanMessage
import uuid
from langchain_ollama import ChatOllama

import config
from application.use_cases.rag_agent.graph import create_agent_graph
from application.use_cases.rag_agent.tools import ToolFactory

router = APIRouter(prefix="/chat", tags=["chat"])

class ChatRequest(BaseModel):
    query: str
    thread_id: str = str(uuid.uuid4())


# Initialize the graph singleton
def get_graph():
    if not hasattr(get_graph, "instance"):
        llm = ChatOllama(model=config.LLM_MODEL, temperature=config.LLM_TEMPERATURE, seed=config.LLM_SEED)

        tool_factory = ToolFactory(collection_name=config.CHILD_COLLECTION)
        tools = tool_factory.create_tools()

        get_graph.instance = create_agent_graph(llm, tools)
    return get_graph.instance


@router.post("/")
async def chat_endpoint(request: ChatRequest):
    graph = get_graph()

    config_dict = {"configurable": {"thread_id": request.thread_id}}

    try:
        # We append a HumanMessage into the graph state
        inputs = {"messages": [HumanMessage(content=request.query)]}
        final_state = graph.invoke(inputs, config=config_dict)

        # The final answer should be in the last message or in agent_answers depending on routing
        # In the implemented nodes, aggregate_answers returns the final synthesis.
        messages = final_state.get("messages", [])
        if messages:
            last_msg = messages[-1].content
            return {"response": last_msg, "thread_id": request.thread_id}
        else:
            return {"response": "No response generated.", "thread_id": request.thread_id}

    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

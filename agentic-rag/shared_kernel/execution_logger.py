import logging
from typing import Any, Callable

logger = logging.getLogger(__name__)
logging.basicConfig(level=logging.INFO)

def log_route(route_name: str, decision: Any, state: Any):
    logger.info(f"Route '{route_name}' decided: {decision}")

def log_tool_start(tool_name: str, args: dict):
    logger.info(f"Starting tool '{tool_name}' with args: {args}")

def log_tool_end(tool_name: str, output: Any):
    logger.info(f"Finished tool '{tool_name}'")

def log_error(tool_name: str, error: Exception):
    logger.error(f"Error in tool '{tool_name}': {str(error)}")

def logged_node(node_name: str, func: Callable) -> Callable:
    """Decorator to log node entry and exit."""
    def wrapper(*args, **kwargs):
        logger.info(f"--- Entering Node: {node_name} ---")
        result = func(*args, **kwargs)
        logger.info(f"--- Exiting Node: {node_name} ---")
        return result
    return wrapper

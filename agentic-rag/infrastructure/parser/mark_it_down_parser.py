import os
import uuid
from typing import BinaryIO

from langchain_core.documents import Document
from markitdown import MarkItDown

from domain.parser.parser_interface import IParser


class MarkItDownParser(IParser):
    def __init__(self):
        self._md = MarkItDown()

    def parse(self, stream: BinaryIO, filename: str, document_id: str, referenced_id: str, reference_type: int, object_name: str) -> Document:
        ext = os.path.splitext(filename)[1]
        result = self._md.convert_stream(stream, file_extension=ext)

        return Document(
            id=document_id,
            page_content=result.text_content,
            metadata={
                "document_id": document_id,
                "filename": filename,
                "extension": ext,
                "referenced_id": referenced_id,
                "reference_type": reference_type,
                "object_name": object_name,
            })

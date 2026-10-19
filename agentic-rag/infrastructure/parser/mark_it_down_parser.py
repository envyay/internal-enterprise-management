import os
import uuid
from typing import BinaryIO

from langchain_core.documents import Document
from markitdown import MarkItDown

from domain.parser.parser_interface import IParser


class MarkItDownParser(IParser):
    def __init__(self):
        self._md = MarkItDown()

    def parse(self, stream: BinaryIO, filename: str) -> Document:
        ext = os.path.splitext(filename)[1]
        result = self._md.convert_stream(stream, file_extension=ext)

        return Document(
            id=str(uuid.uuid4()),
            page_content=result.text_content,
            metadata={
                "filename": filename,
                "extension": ext
            })

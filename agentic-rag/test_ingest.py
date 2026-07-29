from typing import BinaryIO, cast

from infrastructure.parser.mark_it_down_parser import MarkItDownParser
from infrastructure.services.chunking.chunk_service import ChunkService
from infrastructure.services.minio.minio_service import MinioServices
from infrastructure.services.vector_db.qdrant_service import QdrantServices
from application.use_cases.documents.ingest_document_command_handler import IngestDocumentUseCase

def main():
    minio_service = MinioServices()
    bucket_name = 'iem'
    object_name = 'test.txt'
    file_stream = minio_service.get_file_stream(bucket_name, object_name)

    # 1. Đọc file pdf (ví dụ: hoho.pdf đang có sẵn)
    # file_path = "tut4.docx"
    # print(f"1. Đang đọc file: {file_path}")
    #
    # if not os.path.exists(file_path):
    #     print(f"Lỗi: Không tìm thấy file {file_path}")
    #     return
    #
    # with open(file_path, "rb") as f:
    #     file_bytes = f.read()

    # 2. Parse file thành Document object của Domain
    print("2. Đang parse file...")
    parser = MarkItDownParser()
    document = parser.parse(stream=cast(BinaryIO, cast(object, file_stream)), filename=object_name)
    
    print(f"   => Đã parse thành công. Độ dài văn bản: {len(document.page_content)} ký tự.")

    # 3. Khởi tạo các Service
    print("3. Khởi tạo các Services (Chunking, Qdrant)...")
    chunk_service = ChunkService()
    qdrant_service = QdrantServices()
    
    # Bạn có thể xóa collection cũ trước khi test để tránh dữ liệu rác (tuỳ chọn)
    # qdrant_service.delete_collection("iem") 
    
    use_case = IngestDocumentUseCase(
        chunk_service=chunk_service,
        qdrant_service=qdrant_service
    )

    # 4. Thực thi Use Case
    print("4. Chạy Ingest Document Use Case...")
    inserted_ids = use_case.execute(document)
    
    print(f"--- HOÀN TẤT ---")
    print(f"Tổng cộng có {len(inserted_ids)} Child chunks được lưu vào Qdrant.")
    print("Kiểm tra thư mục './local_parent_store' bạn sẽ thấy các file chứa Parent chunks.")

if __name__ == "__main__":
    main()

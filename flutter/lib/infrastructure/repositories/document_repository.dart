import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/download_document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/upload_document_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/documents/document_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/documentRemoteDataSource/document_remote_data_source.dart';

abstract interface class IDocumentRepository{
  Future<List<DocumentDto>> getDocuments();
  Future<DocumentDto> getDocumentById();
  Future<DocumentDto> createDocument({required String referenceId, required String objectName, required int size, required String extension});
  Future<String> uploadDocument({required String objectName, required int expiresInSeconds});
  Future<String> downloadDocument({required String objectName, required int expiresInSeconds});
  Future<bool> updateDocument({required String id, required String objectName});
  Future<bool> deleteDocument({required String id});
}

class DocumentRepository implements IDocumentRepository {
  const DocumentRepository({required this._documentRemoteDataSource});
  final DocumentRemoteDataSource _documentRemoteDataSource;

  @override
  Future<DocumentDto> createDocument({required String referenceId, required String objectName, required int size, required String extension}) async {
    final res = await _documentRemoteDataSource.createDocument(CreateDocumentDto(referenceId: referenceId, objectName: objectName, size: size, extension: extension));
    return res.data;
  }

  @override
  Future<bool> deleteDocument({required String id}) async {
    final res = await _documentRemoteDataSource.deleteDocument(DeleteDocumentDto(id: id));
    return res.data;
  }

  @override
  Future<String> downloadDocument({required String objectName, required int expiresInSeconds}) async {
    final res = await _documentRemoteDataSource.downloadDocument(DownloadDocumentDto(objectName: objectName, expiresInSeconds: expiresInSeconds));
    return res.data;
  }

  @override
  Future<DocumentDto> getDocumentById() {
    // TODO: implement getDocumentById
    throw UnimplementedError();
  }

  @override
  Future<List<DocumentDto>> getDocuments() async {
    final res = await _documentRemoteDataSource.getDocuments();
    return res.data;
  }

  @override
  Future<bool> updateDocument({required String id, required String objectName}) async {
    final res = await _documentRemoteDataSource.updateDocument(UpdateDocumentDto(id: id, objectName: objectName));
    return res.data;
  }

  @override
  Future<String> uploadDocument({required String objectName, required int expiresInSeconds}) async {
    final res = await _documentRemoteDataSource.uploadDocument(UploadDocumentDto(objectName: objectName, expiresInSeconds: expiresInSeconds));
    return res.data;
  }

}
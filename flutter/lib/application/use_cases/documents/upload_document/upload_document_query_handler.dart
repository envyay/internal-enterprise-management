import 'package:enterprise_management/application/use_cases/documents/upload_document/upload_document_query.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UploadDocumentQueryHandler extends IQueryHandler<UploadDocumentQuery, String> {
  const UploadDocumentQueryHandler({required this._documentRepository});
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<String>> handle(UploadDocumentQuery query) async {
    final res = await _documentRepository.uploadDocument(objectName: query.objectName, expiresInSeconds: query.expiresInSeconds);
    return Result.success(res);
  }
}
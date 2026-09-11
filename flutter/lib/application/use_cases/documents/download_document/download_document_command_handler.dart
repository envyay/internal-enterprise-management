import 'package:enterprise_management/application/use_cases/documents/download_document/download_document_query.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class DownloadDocumentQueryHandler extends IQueryHandler<DownloadDocumentQuery, String> {
  const DownloadDocumentQueryHandler({required this._documentRepository});
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<String>> handle(DownloadDocumentQuery query) async {
    final res = await _documentRepository.downloadDocument(objectName: query.objectName, expiresInSeconds: query.expiresInSeconds);
    return Result.success(res);
  }

}
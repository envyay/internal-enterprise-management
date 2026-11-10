import 'package:dio/dio.dart';
import 'package:enterprise_management/application/use_cases/documents/open_document/open_document_query.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class OpenDocumentQueryHandler extends IQueryHandler<OpenDocumentQuery, bool> {
  const OpenDocumentQueryHandler({
    required this._documentRepository,
    required this._dio,
  });

  final Dio _dio;
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<bool>> handle(OpenDocumentQuery query) async {
    final dir = await getApplicationDocumentsDirectory();
    final filePath = p.join(dir.path, "IEM", query.document.name);

    final fileOpenResult = await OpenFilex.open(filePath);

    if (fileOpenResult.type == .done) {
      return Result.success(true);
    }

    if (fileOpenResult.type == .noAppToOpen ||
        fileOpenResult.type == .permissionDenied) {
      return Result.failure(.unexpected(fileOpenResult.message));
    }

    if (fileOpenResult.type == .fileNotFound || fileOpenResult.type == .error) {
      final url = await _documentRepository.downloadDocument(
        objectName: query.document.objectName,
        expiresInSeconds: 300,
      );

      final res = await _dio.download(url, filePath);
      if (res.statusCode == 200) {
        await OpenFilex.open(filePath);
      }
    }

    return Result.success(true);
  }
}

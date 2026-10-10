import 'package:dio/dio.dart';
import 'package:enterprise_management/application/use_cases/documents/upload_document/upload_document_query.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class UploadDocumentQueryHandler
    extends IQueryHandler<UploadDocumentQuery, bool> {
  const UploadDocumentQueryHandler({
    required this._documentRepository,
    required this._dio,
  });

  final Dio _dio;
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<bool>> handle(UploadDocumentQuery query) async {
    final documentsDir = await getApplicationDocumentsDirectory();
    final documents = await FilePicker.pickFiles(
      initialDirectory: documentsDir.path,
      type: FileType.custom,
      allowedExtensions: [
        'pdf',
        'docx',
        'xlsx',
        'xls',
        'html',
        'csv',
        'json',
        'xml',
      ],
    );

    await Future.wait(_uploadDocs(docs: documents, query: query));

    return Result.success(true);
  }

  Iterable<Future<void>> _uploadDocs({
    required List<PlatformFile> docs,
    required UploadDocumentQuery query,
  }) {
    return docs.map((doc) async {
      final name = doc.name;
      final file = doc.xFile;
      final extension = doc.extension ?? '';
      final length = await file.length();
      final objectName = '${Uuid().v7()}.${doc.extension}';

      /// Lay URL tu BE => MinIO => URL
      final url = await _documentRepository.uploadDocument(
        objectName: objectName,
        expiresInSeconds: 300,
      );

      /// Tu URL => Upload File => MinIO
      final res = await _dio.put(
        url,
        data: file.openRead(),
        options: Options(
          headers: {
            Headers.contentLengthHeader: length,
            Headers.contentTypeHeader: 'application/octet-stream',
          },
          responseType: ResponseType.plain,
          validateStatus: (s) => s != null && s >= 200 && s < 300,
        ),
      );

      /// UPload THanh cong => Tao Document cho BE
      if (res.statusCode == 200) {
        await _documentRepository.createDocument(
          referenceId: query.referenceId,
          referenceType: query.referenceType,
          objectName: objectName,
          size: length,
          extension: extension,
          name: name,
        );

        /// Ingest Python => Tao Vector Database cho LLM
        /// TODO: // Ingest ben python
      }
    });
  }
}

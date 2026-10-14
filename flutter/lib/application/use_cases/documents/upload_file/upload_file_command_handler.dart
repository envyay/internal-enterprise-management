import 'dart:io';

import 'package:dio/dio.dart';
import 'package:enterprise_management/application/use_cases/documents/upload_file/upload_file_command.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:uuid/uuid.dart';

class UploadFilesCommandHandler
    extends ICommandHandler<UploadFilesCommand, bool> {
  const UploadFilesCommandHandler({
    required this._documentRepository,
    required this._dio,
  });

  final Dio _dio;
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<bool>> handle(UploadFilesCommand command) async {
    await Future.wait(
      command.files.map((doc) async {

        final file = File(doc.path);
        final url = await _documentRepository.uploadDocument(
          objectName: doc.objectName,
          expiresInSeconds: 300,
        );

        final res = await _dio.put(
          url,
          data: file.openRead(),
          options: Options(
            headers: {
              Headers.contentLengthHeader: doc.size,
              Headers.contentTypeHeader: 'application/octet-stream',
            },
            responseType: ResponseType.plain,
            validateStatus: (s) => s != null && s >= 200 && s < 300,
          ),
        );

        if (res.statusCode == 200) {
          await _documentRepository.createDocument(
            referenceId: command.referenceId,
            referenceType: command.referenceType,
            objectName: doc.objectName,
            size: doc.size,
            extension: doc.extension,
            name: doc.name,
          );
        }
      }),
    );
    return Result.success(true);
  }
}

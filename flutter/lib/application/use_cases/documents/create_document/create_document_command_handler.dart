import 'package:enterprise_management/application/use_cases/documents/create_document/create_document_command.dart';
import 'package:enterprise_management/infrastructure/data/dtos/documents/document_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateDocumentCommandHandler
    extends ICommandHandler<CreateDocumentCommand, String> {
  const CreateDocumentCommandHandler({required this._documentRepository});

  final IDocumentRepository _documentRepository;

  @override
  Future<Result<String>> handle(CreateDocumentCommand command) async {
    final res = await _documentRepository.createDocument(
      referenceId: command.referenceId,
      objectName: command.objectName,
      size: command.size,
      extension: command.extension, referenceType: 1, name: '',
    );
    return Result.success(res);
  }
}

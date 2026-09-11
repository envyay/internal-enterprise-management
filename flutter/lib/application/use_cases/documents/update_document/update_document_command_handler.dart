import 'package:enterprise_management/application/use_cases/documents/update_document/update_document_command.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UpdateDocumentCommandHandler extends ICommandHandler<UpdateDocumentCommand, bool> {
  const UpdateDocumentCommandHandler({required this._documentRepository});
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<bool>> handle(UpdateDocumentCommand command) async {
    final res = await _documentRepository.updateDocument(id: command.id, objectName: command.objectName);
    return Result.success(res);
  }

}
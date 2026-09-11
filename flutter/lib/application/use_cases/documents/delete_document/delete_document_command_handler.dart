import 'package:enterprise_management/application/use_cases/documents/delete_document/delete_document_command.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class DeleteDocumentCommandHandler extends ICommandHandler<DeleteDocumentCommand, bool> {
  const DeleteDocumentCommandHandler({required this._documentRepository});
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<bool>> handle(DeleteDocumentCommand command) async {
    final res = await _documentRepository.deleteDocument(id: command.id);
    return Result.success(res);
  }


}
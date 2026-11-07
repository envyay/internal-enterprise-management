import 'package:enterprise_management/application/use_cases/chats/delete_conversation/delete_conversation_command.dart';
import 'package:enterprise_management/infrastructure/repositories/chat_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class DeleteConversationCommandHandler extends ICommandHandler<DeleteConversationCommand, bool> {
  const DeleteConversationCommandHandler({required this._chatRepository});
  final IChatRepository _chatRepository;
  @override
  Future<Result<bool>> handle(DeleteConversationCommand command) async {
    final res = await _chatRepository.deleteConversation(id: command.id);
    return Result.success(res);
  }
}
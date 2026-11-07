import 'package:enterprise_management/application/use_cases/chats/create_chat_message/create_chat_message_command.dart';
import 'package:enterprise_management/infrastructure/repositories/chat_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateChatMessageCommandHandler extends ICommandHandler<CreateChatMessageCommand, String> {
  const CreateChatMessageCommandHandler({required this._chatRepository});
  final IChatRepository _chatRepository;
  @override
  Future<Result<String>> handle(CreateChatMessageCommand command) async {
    final res = await _chatRepository.createChatMessage(content: command.content, isUser: command.isUser, conversationId: command.conversationId);
    return Result.success(res);
  }
}
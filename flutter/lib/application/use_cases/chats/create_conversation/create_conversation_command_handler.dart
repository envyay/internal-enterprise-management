import 'package:enterprise_management/application/use_cases/chats/create_conversation/create_conversation_command.dart';
import 'package:enterprise_management/domain/aggregates/conversation/conversation.dart';
import 'package:enterprise_management/infrastructure/repositories/chat_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateConversationCommandHandler extends ICommandHandler<CreateConversationCommand, Conversation> {
  const CreateConversationCommandHandler({required this._chatRepository});
  final IChatRepository _chatRepository;

  @override
  Future<Result<Conversation>> handle(CreateConversationCommand command) async {
    final res = await _chatRepository.createConversation(
      title: command.title,
      query: command.query,
      id: command.id,
    );
    return Result.success(res);
  }
}

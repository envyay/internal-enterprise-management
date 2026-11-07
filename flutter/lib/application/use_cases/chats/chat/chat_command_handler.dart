import 'package:enterprise_management/application/use_cases/chats/chat/chat_command.dart';
import 'package:enterprise_management/infrastructure/repositories/chat_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class ChatCommandHandler extends ICommandHandler<ChatCommand, Stream> {
  const ChatCommandHandler({required this._chatRepository});
  final IChatRepository _chatRepository;
  @override
  Future<Result<Stream>> handle(ChatCommand command) async {
    final res = await _chatRepository.chat(query: command.query, threadId: command.threadId);
    return Result.success(res);
  }
}
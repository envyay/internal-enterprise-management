import 'package:enterprise_management/application/use_cases/chats/get_chat_messages_by_conversation/get_chat_messages_by_conversation_query.dart';
import 'package:enterprise_management/domain/aggregates/chat/chat_message.dart';
import 'package:enterprise_management/infrastructure/repositories/chat_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetChatMessagesByConversationQueryHandler extends IQueryHandler<GetChatMessagesByConversationQuery, List<ChatMessage>> {
  const GetChatMessagesByConversationQueryHandler({required this._chatRepository});
  final IChatRepository _chatRepository;

  @override
  Future<Result<List<ChatMessage>>> handle(GetChatMessagesByConversationQuery query) async {
    final res = await _chatRepository.getChatMessagesByConversationId(conversationId: query.conversationId);
    return Result.success(res);
  }
}
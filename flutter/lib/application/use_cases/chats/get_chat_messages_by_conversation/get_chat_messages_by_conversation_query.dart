import 'package:enterprise_management/domain/aggregates/chat/chat_message.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_chat_messages_by_conversation_query.freezed.dart';
@freezed
abstract class GetChatMessagesByConversationQuery with _$GetChatMessagesByConversationQuery implements IQuery<List<ChatMessage>> {
  const factory GetChatMessagesByConversationQuery({required String conversationId}) = _GetChatMessagesByConversationQuery;
}
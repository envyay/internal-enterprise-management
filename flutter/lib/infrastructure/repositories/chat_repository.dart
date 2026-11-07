import 'package:enterprise_management/domain/aggregates/chat/chat_message.dart';
import 'package:enterprise_management/domain/aggregates/conversation/conversation.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/chat_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_chat_message_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_conversation_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/chat_messages/chat_message_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/conversations/conversation_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/chat_service/chat_remote_data_source.dart';

abstract interface class IChatRepository {
  Future<Stream> chat({required String query, required String threadId});

  Future<List<Conversation>> getConversations();

  Future<List<ChatMessage>> getChatMessagesByConversationId({required String conversationId});

  Future<Conversation> createConversation({String? title, String? query, String? id});
  Future<String> createChatMessage({required String content, required bool isUser, required String conversationId});

  Future<bool> deleteConversation({required String id});
}

class ChatRepository implements IChatRepository {
  const ChatRepository({required this._chatRemoteDataSource});
  final ChatRemoteDataSource _chatRemoteDataSource;

  @override
  Future<Stream> chat({required String query, required String threadId}) async {
    return _chatRemoteDataSource.chat(ChatDto(query: query, threadId: threadId));
  }

  @override
  Future<Conversation> createConversation({String? title, String? query, String? id}) async {
    final res = await _chatRemoteDataSource.createConversation(
      CreateConversationDto(title: title, query: query, id: id),
    );
    return res.data.toAggregate();
  }

  @override
  Future<bool> deleteConversation({required String id}) async {
    final res = await _chatRemoteDataSource.deleteConversation(id);
    return res.data;
  }

  @override
  Future<List<ChatMessage>> getChatMessagesByConversationId({required String conversationId}) async {
    final res = await _chatRemoteDataSource.getChatMessagesByConversationId(conversationId);
    return res.data.map((item) => item.toAggregate()).toList();
  }

  @override
  Future<List<Conversation>> getConversations() async {
    final res = await _chatRemoteDataSource.getConversations();
    return res.data.map((item) => item.toAggregate()).toList();
  }

  @override
  Future<String> createChatMessage({required String content, required bool isUser, required String conversationId}) async {
    final res = await _chatRemoteDataSource.createChatMessage(CreateChatMessageDto(content: content, isUser: isUser, conversationId: conversationId));
    return res.data;
  }
}
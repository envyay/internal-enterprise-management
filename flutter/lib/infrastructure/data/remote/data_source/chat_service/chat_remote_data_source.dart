import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/chat_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_chat_message_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_conversation_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/chat_messages/chat_message_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/conversations/conversation_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'chat_remote_data_source.g.dart';
@RestApi()
abstract class ChatRemoteDataSource {
  factory ChatRemoteDataSource(Dio dio, {String? baseUrl}) = _ChatRemoteDataSource;

  @POST('Chat')
  @DioResponseType(ResponseType.stream)
  Stream<Uint8List> chat(@Body() ChatDto body);
  
  @GET('Conversations')
  Future<ApiResponse<List<ConversationDto>>> getConversations();

  @GET('{id}/ChatMessages')
  Future<ApiResponse<List<ChatMessageDto>>> getChatMessagesByConversationId(@Path('id') String id);

  @POST('CreateConversation')
  Future<ApiResponse<ConversationDto>> createConversation(@Body() CreateConversationDto body);

  @POST('CreateChatMessage')
  Future<ApiResponse<String>> createChatMessage(@Body() CreateChatMessageDto body);

  @DELETE('{id}')
  Future<ApiResponse<bool>> deleteConversation(@Path('id') String id);
}
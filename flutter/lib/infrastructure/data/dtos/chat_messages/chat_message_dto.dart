import 'package:enterprise_management/domain/aggregates/chat/chat_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_dto.freezed.dart';
part 'chat_message_dto.g.dart';

@freezed
abstract class ChatMessageDto with _$ChatMessageDto {
  const factory ChatMessageDto({required String id, required String conversationId, required bool isUser, String? content}) = _ChatMessageDto;

  factory ChatMessageDto.fromJson(Map<String, dynamic> json) => _$ChatMessageDtoFromJson(json);
}

extension ChatMessageDtoX on ChatMessageDto {
  ChatMessage toAggregate() {
    return ChatMessage(id: id, content: content ?? '', isUser: isUser, conversationId: conversationId);
  }
}
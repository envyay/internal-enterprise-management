import 'package:enterprise_management/domain/aggregates/conversation/conversation.dart';
import 'package:enterprise_management/infrastructure/data/dtos/chat_messages/chat_message_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_dto.freezed.dart';
part 'conversation_dto.g.dart';
@freezed
abstract class ConversationDto with _$ConversationDto {
  const factory ConversationDto({
    required String id,
    required String userId,
    String? title,
    List<ChatMessageDto>? chatMessage,
  }) = _ConversationDto;
  factory ConversationDto.fromJson(Map<String, dynamic> json) =>
      _$ConversationDtoFromJson(json);
}
extension ConversationDtoX on ConversationDto {
  Conversation toAggregate() {
    return Conversation(
      id: id,
      userId: userId,
      title: title,
      chatMessage: chatMessage?.map((item) => item.toAggregate()).toList(),
    );
  }
}
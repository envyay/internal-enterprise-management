import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_chat_message_dto.freezed.dart';
part 'create_chat_message_dto.g.dart';
@freezed
abstract class CreateChatMessageDto with _$CreateChatMessageDto {
  const factory CreateChatMessageDto({required String content, required bool isUser, required String conversationId}) = _CreateChatMessageDto;

  factory CreateChatMessageDto.fromJson(Map<String, dynamic> json) => _$CreateChatMessageDtoFromJson(json);
}
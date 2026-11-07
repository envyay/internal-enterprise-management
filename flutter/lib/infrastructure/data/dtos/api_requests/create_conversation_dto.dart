import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_conversation_dto.freezed.dart';
part 'create_conversation_dto.g.dart';
@freezed
abstract class CreateConversationDto with _$CreateConversationDto {
  const factory CreateConversationDto({
    String? title,
    String? query,
    String? id,
  }) = _CreateConversationDto;

  factory CreateConversationDto.fromJson(Map<String, dynamic> json) => _$CreateConversationDtoFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentDto _$CommentDtoFromJson(Map<String, dynamic> json) => _CommentDto(
  id: json['id'] as String,
  ticketId: json['ticketId'] as String,
  userId: json['userId'] as String,
  content: json['content'] as String,
);

Map<String, dynamic> _$CommentDtoToJson(_CommentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ticketId': instance.ticketId,
      'userId': instance.userId,
      'content': instance.content,
    };

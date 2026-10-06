// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_comment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateCommentDto _$CreateCommentDtoFromJson(Map<String, dynamic> json) =>
    _CreateCommentDto(
      content: json['content'] as String,
      ticketId: json['ticketId'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$CreateCommentDtoToJson(_CreateCommentDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'ticketId': instance.ticketId,
      'userId': instance.userId,
    };

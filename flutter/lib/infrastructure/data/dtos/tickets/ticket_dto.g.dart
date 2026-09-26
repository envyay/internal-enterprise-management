// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketDto _$TicketDtoFromJson(Map<String, dynamic> json) => _TicketDto(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  projectId: json['projectId'] as String,
  ticketStatusId: json['ticketStatusId'] as String,
  users: (json['users'] as List<dynamic>?)
      ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  comments: (json['comments'] as List<dynamic>?)
      ?.map((e) => CommentDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$TicketDtoToJson(_TicketDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'projectId': instance.projectId,
      'ticketStatusId': instance.ticketStatusId,
      'users': instance.users,
      'comments': instance.comments,
    };

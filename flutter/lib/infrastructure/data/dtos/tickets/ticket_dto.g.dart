// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketDto _$TicketDtoFromJson(Map<String, dynamic> json) => _TicketDto(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
);

Map<String, dynamic> _$TicketDtoToJson(_TicketDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };

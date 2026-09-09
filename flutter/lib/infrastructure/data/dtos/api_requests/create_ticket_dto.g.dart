// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateTicketDto _$CreateTicketDtoFromJson(Map<String, dynamic> json) =>
    _CreateTicketDto(
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$CreateTicketDtoToJson(_CreateTicketDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

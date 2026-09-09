// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateTicketDto _$UpdateTicketDtoFromJson(Map<String, dynamic> json) =>
    _UpdateTicketDto(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$UpdateTicketDtoToJson(_UpdateTicketDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };

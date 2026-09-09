// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketStatusDto _$TicketStatusDtoFromJson(Map<String, dynamic> json) =>
    _TicketStatusDto(
      id: json['id'] as String,
      name: json['name'] as String,
      projectId: ProjectDto.fromJson(json['projectId'] as Map<String, dynamic>),
      ticketIds: (json['ticketIds'] as List<dynamic>)
          .map((e) => TicketDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TicketStatusDtoToJson(_TicketStatusDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'projectId': instance.projectId,
      'ticketIds': instance.ticketIds,
    };

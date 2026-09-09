// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_ticket_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateTicketStatusDto _$UpdateTicketStatusDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateTicketStatusDto(
  id: json['id'] as String,
  name: json['name'] as String,
  projectIds: (json['projectIds'] as List<dynamic>)
      .map((e) => ProjectDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UpdateTicketStatusDtoToJson(
  _UpdateTicketStatusDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'projectIds': instance.projectIds,
};

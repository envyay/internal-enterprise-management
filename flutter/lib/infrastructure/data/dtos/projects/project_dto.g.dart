// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectDto _$ProjectDtoFromJson(Map<String, dynamic> json) => _ProjectDto(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  code: json['code'] as String?,
  status: (json['status'] as num?)?.toInt(),
  startDate: json['startDate'] == null
      ? null
      : DateTime.parse(json['startDate'] as String),
  endDate: json['endDate'] == null
      ? null
      : DateTime.parse(json['endDate'] as String),
  users: (json['users'] as List<dynamic>?)
      ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  ticketStatuses: (json['ticketStatuses'] as List<dynamic>?)
      ?.map((e) => TicketStatusDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ProjectDtoToJson(_ProjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'code': instance.code,
      'status': instance.status,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'users': instance.users,
      'ticketStatuses': instance.ticketStatuses,
    };

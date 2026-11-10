// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateProjectDto _$UpdateProjectDtoFromJson(Map<String, dynamic> json) =>
    _UpdateProjectDto(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      code: json['code'] as String,
      status: (json['status'] as num?)?.toInt(),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
    );

Map<String, dynamic> _$UpdateProjectDtoToJson(_UpdateProjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'code': instance.code,
      'status': instance.status,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };

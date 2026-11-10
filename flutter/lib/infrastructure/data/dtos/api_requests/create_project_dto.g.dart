// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateProjectDto _$CreateProjectDtoFromJson(Map<String, dynamic> json) =>
    _CreateProjectDto(
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

Map<String, dynamic> _$CreateProjectDtoToJson(_CreateProjectDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'code': instance.code,
      'status': instance.status,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
    };

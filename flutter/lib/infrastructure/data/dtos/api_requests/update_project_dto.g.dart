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
    );

Map<String, dynamic> _$UpdateProjectDtoToJson(_UpdateProjectDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'code': instance.code,
    };

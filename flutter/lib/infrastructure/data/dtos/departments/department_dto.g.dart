// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DepartmentDto _$DepartmentDtoFromJson(Map<String, dynamic> json) =>
    _DepartmentDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      head: json['head'] as String?,
      memberCount: (json['memberCount'] as num?)?.toInt(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DepartmentDtoToJson(_DepartmentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'head': instance.head,
      'memberCount': instance.memberCount,
      'users': instance.users,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_users_in_department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetUsersInDepartmentDto _$SetUsersInDepartmentDtoFromJson(
  Map<String, dynamic> json,
) => _SetUsersInDepartmentDto(
  id: json['id'] as String,
  userIds: (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$SetUsersInDepartmentDtoToJson(
  _SetUsersInDepartmentDto instance,
) => <String, dynamic>{'id': instance.id, 'userIds': instance.userIds};

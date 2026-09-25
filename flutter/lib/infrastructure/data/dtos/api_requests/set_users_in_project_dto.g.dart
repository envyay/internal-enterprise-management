// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_users_in_project_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SetUsersInProjectDto _$SetUsersInProjectDtoFromJson(
  Map<String, dynamic> json,
) => _SetUsersInProjectDto(
  id: json['id'] as String,
  userIds: (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$SetUsersInProjectDtoToJson(
  _SetUsersInProjectDto instance,
) => <String, dynamic>{'id': instance.id, 'userIds': instance.userIds};

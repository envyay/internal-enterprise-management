// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_users_to_user_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddUsersToUserGroupDto _$AddUsersToUserGroupDtoFromJson(
  Map<String, dynamic> json,
) => _AddUsersToUserGroupDto(
  id: json['id'] as String,
  userIds: (json['userIds'] as List<dynamic>)
      .map((e) => UserDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AddUsersToUserGroupDtoToJson(
  _AddUsersToUserGroupDto instance,
) => <String, dynamic>{'id': instance.id, 'userIds': instance.userIds};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_user_from_user_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RemoveUserFromUserGroupDto _$RemoveUserFromUserGroupDtoFromJson(
  Map<String, dynamic> json,
) => _RemoveUserFromUserGroupDto(
  id: json['id'] as String,
  userId: UserDto.fromJson(json['userId'] as Map<String, dynamic>),
);

Map<String, dynamic> _$RemoveUserFromUserGroupDtoToJson(
  _RemoveUserFromUserGroupDto instance,
) => <String, dynamic>{'id': instance.id, 'userId': instance.userId};

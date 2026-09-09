// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateUserGroupDto _$CreateUserGroupDtoFromJson(Map<String, dynamic> json) =>
    _CreateUserGroupDto(
      name: json['name'] as String,
      userIds: (json['userIds'] as List<dynamic>)
          .map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateUserGroupDtoToJson(_CreateUserGroupDto instance) =>
    <String, dynamic>{'name': instance.name, 'userIds': instance.userIds};

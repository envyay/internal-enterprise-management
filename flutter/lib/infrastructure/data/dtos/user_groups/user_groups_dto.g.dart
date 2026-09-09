// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_groups_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserGroupDto _$UserGroupDtoFromJson(Map<String, dynamic> json) =>
    _UserGroupDto(
      id: json['id'] as String,
      name: json['name'] as String,
      users: (json['users'] as List<dynamic>)
          .map((e) => UserDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserGroupDtoToJson(_UserGroupDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'users': instance.users,
    };

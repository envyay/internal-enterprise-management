// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_group_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserGroupDto _$UpdateUserGroupDtoFromJson(Map<String, dynamic> json) =>
    _UpdateUserGroupDto(
      id: json['id'] as String,
      name: json['name'] as String,
      userIds: (json['userIds'] as List<dynamic>)
          .map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$UpdateUserGroupDtoToJson(_UpdateUserGroupDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'userIds': instance.userIds,
    };

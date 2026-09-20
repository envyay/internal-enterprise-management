// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserDto _$UpdateUserDtoFromJson(Map<String, dynamic> json) =>
    _UpdateUserDto(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$UpdateUserDtoToJson(_UpdateUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'status': instance.status,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) => _AuthDto(
  userId: json['userId'] as String?,
  accessToken: json['accessToken'] as String?,
);

Map<String, dynamic> _$AuthDtoToJson(_AuthDto instance) => <String, dynamic>{
  'userId': instance.userId,
  'accessToken': instance.accessToken,
};

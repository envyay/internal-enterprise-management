// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseData<T> _$ApiResponseDataFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => ApiResponseData<T>(
  (json['statusCode'] as num?)?.toInt(),
  json['success'] as bool?,
  fromJsonT(json['data']),
);

Map<String, dynamic> _$ApiResponseDataToJson<T>(
  ApiResponseData<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'success': instance.success,
  'data': toJsonT(instance.data),
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DocumentDto _$DocumentDtoFromJson(Map<String, dynamic> json) => _DocumentDto(
  id: json['id'] as String,
  referenceId: json['referenceId'] as String,
  bucketName: json['bucketName'] as String,
  objectName: json['objectName'] as String,
  size: (json['size'] as num).toInt(),
  status: (json['status'] as num).toInt(),
  extension: json['extension'] as String,
  creator: UserDto.fromJson(json['creator'] as Map<String, dynamic>),
  updater: UserDto.fromJson(json['updater'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DocumentDtoToJson(_DocumentDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referenceId': instance.referenceId,
      'bucketName': instance.bucketName,
      'objectName': instance.objectName,
      'size': instance.size,
      'status': instance.status,
      'extension': instance.extension,
      'creator': instance.creator,
      'updater': instance.updater,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadDocumentDto _$UploadDocumentDtoFromJson(Map<String, dynamic> json) =>
    _UploadDocumentDto(
      objectName: json['objectName'] as String,
      expiresInSeconds: (json['expiresInSeconds'] as num).toInt(),
    );

Map<String, dynamic> _$UploadDocumentDtoToJson(_UploadDocumentDto instance) =>
    <String, dynamic>{
      'objectName': instance.objectName,
      'expiresInSeconds': instance.expiresInSeconds,
    };

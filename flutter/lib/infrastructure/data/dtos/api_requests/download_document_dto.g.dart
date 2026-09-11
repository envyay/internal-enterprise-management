// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DownloadDocumentDto _$DownloadDocumentDtoFromJson(Map<String, dynamic> json) =>
    _DownloadDocumentDto(
      objectName: json['objectName'] as String,
      expiresInSeconds: (json['expiresInSeconds'] as num).toInt(),
    );

Map<String, dynamic> _$DownloadDocumentDtoToJson(
  _DownloadDocumentDto instance,
) => <String, dynamic>{
  'objectName': instance.objectName,
  'expiresInSeconds': instance.expiresInSeconds,
};

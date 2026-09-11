// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_document_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDocumentDto _$CreateDocumentDtoFromJson(Map<String, dynamic> json) =>
    _CreateDocumentDto(
      referenceId: json['referenceId'] as String,
      objectName: json['objectName'] as String,
      size: (json['size'] as num).toInt(),
      extension: json['extension'] as String,
    );

Map<String, dynamic> _$CreateDocumentDtoToJson(_CreateDocumentDto instance) =>
    <String, dynamic>{
      'referenceId': instance.referenceId,
      'objectName': instance.objectName,
      'size': instance.size,
      'extension': instance.extension,
    };

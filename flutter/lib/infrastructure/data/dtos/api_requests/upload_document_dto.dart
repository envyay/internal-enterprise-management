import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_document_dto.freezed.dart';
part 'upload_document_dto.g.dart';
@freezed
abstract class UploadDocumentDto with _$UploadDocumentDto {
  const factory UploadDocumentDto({required String objectName, required int expiresInSeconds}) = _UploadDocumentDto;

  factory UploadDocumentDto.fromJson(Map<String, dynamic> json) => _$UploadDocumentDtoFromJson(json);
}
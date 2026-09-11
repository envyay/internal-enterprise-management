import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_document_dto.freezed.dart';
part 'download_document_dto.g.dart';
@freezed
abstract class DownloadDocumentDto with _$DownloadDocumentDto {
  const factory DownloadDocumentDto({required String objectName, required int expiresInSeconds}) = _DownloadDocumentDto;

  factory DownloadDocumentDto.fromJson(Map<String, dynamic> json) => _$DownloadDocumentDtoFromJson(json);
}
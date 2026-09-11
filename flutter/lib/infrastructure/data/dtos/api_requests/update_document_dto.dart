import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_document_dto.freezed.dart';
part 'update_document_dto.g.dart';
@freezed
abstract class UpdateDocumentDto with _$UpdateDocumentDto {
  const factory UpdateDocumentDto({required String id, required String objectName}) = _UpdateDocumentDto;
  factory UpdateDocumentDto.fromJson(Map<String, dynamic> json) => _$UpdateDocumentDtoFromJson(json);
}
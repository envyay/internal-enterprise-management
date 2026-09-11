import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_document_dto.freezed.dart';
part 'delete_document_dto.g.dart';
@freezed
abstract class DeleteDocumentDto with _$DeleteDocumentDto {
  const factory DeleteDocumentDto({required String id}) = _DeleteDocumentDto;

  factory DeleteDocumentDto.fromJson(Map<String, dynamic> json) => _$DeleteDocumentDtoFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_document_dto.freezed.dart';
part 'create_document_dto.g.dart';
@freezed
abstract class CreateDocumentDto with _$CreateDocumentDto {
  const factory CreateDocumentDto({required String referenceId, required String objectName, required int size, required String extension}) = _CreateDocumentDto;

  factory CreateDocumentDto.fromJson(Map<String, dynamic> json) => _$CreateDocumentDtoFromJson(json);
}
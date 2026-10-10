import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_dto.freezed.dart';

part 'document_dto.g.dart';

@freezed
abstract class DocumentDto with _$DocumentDto {
  const factory DocumentDto({
    required String id,
    required String referenceId,
    required String name,
    required String bucketName,
    required String objectName,
    required int size,
    required int status,
    required String extension,
  }) = _DocumentDto;

  factory DocumentDto.fromJson(Map<String, dynamic> json) =>
      _$DocumentDtoFromJson(json);
}

extension DocumentDtoX on DocumentDto {
  Document toAggregate() {
    return Document(
      id: id,
      referenceId: referenceId,
      bucketName: bucketName,
      objectName: objectName,
      size: size,
      status: status,
      extension: extension,
      name: name,
    );
  }
}

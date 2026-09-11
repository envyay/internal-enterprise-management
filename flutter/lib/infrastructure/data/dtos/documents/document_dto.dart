import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_dto.freezed.dart';
part 'document_dto.g.dart';
@freezed
abstract class DocumentDto with _$DocumentDto {
  const factory DocumentDto({
    required String id,
    required String referenceId,
    required String bucketName,
    required String objectName,
    required int size,
    required int status,
    required String extension,
    required UserDto creator,
    required UserDto updater,
  }) = _DocumentDto;

  factory DocumentDto.fromJson(Map<String, dynamic> json) => _$DocumentDtoFromJson(json);
}

import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_document_query.freezed.dart';

@freezed
abstract class UploadDocumentQuery with _$UploadDocumentQuery implements IQuery<bool> {
  const factory UploadDocumentQuery({required String? referenceId, required int referenceType}) = _UploadDocumentQuery;
}
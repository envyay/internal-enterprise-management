import 'package:enterprise_management/shared_kernel/cqrs/query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'download_document_query.freezed.dart';
@freezed
abstract class DownloadDocumentQuery with _$DownloadDocumentQuery implements IQuery<String>{
  const factory DownloadDocumentQuery({required String objectName, required int expiresInSeconds}) = _DownloadDocumentQuery;
}
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_document_query.freezed.dart';
@freezed
abstract class OpenDocumentQuery with _$OpenDocumentQuery implements IQuery<bool>{
  const factory OpenDocumentQuery({required Document document}) = _OpenDocumentQuery;
}
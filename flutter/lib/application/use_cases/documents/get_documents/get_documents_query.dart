import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/infrastructure/data/dtos/documents/document_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_documents_query.freezed.dart';
@freezed
abstract class GetDocumentsQuery with _$GetDocumentsQuery implements IQuery<List<Document>> {
  const factory GetDocumentsQuery() = _GetDocumentsQuery;
}
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_documents_by_departments_query.freezed.dart';

@freezed
abstract class GetDocumentsByDepartmentsQuery with _$GetDocumentsByDepartmentsQuery implements IQuery<List<Document>> {
  const factory GetDocumentsByDepartmentsQuery() = _GetDocumentsByDepartmentsQuery;
}
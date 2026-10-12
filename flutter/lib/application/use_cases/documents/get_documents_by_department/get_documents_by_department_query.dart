import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_documents_by_department_query.freezed.dart';
@freezed
abstract class GetDocumentsByDepartmentQuery with _$GetDocumentsByDepartmentQuery implements IQuery<List<Document>> {
  const factory GetDocumentsByDepartmentQuery({required String departmentId}) = _GetDocumentsByDepartmentQuery;
}
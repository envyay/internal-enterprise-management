import 'package:enterprise_management/application/use_cases/documents/get_documents_by_department/get_documents_by_department_query.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetDocumentsByDepartmentQueryHandler extends IQueryHandler<GetDocumentsByDepartmentQuery, List<Document>> {
  const GetDocumentsByDepartmentQueryHandler({required this._documentRepository});
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<List<Document>>> handle(GetDocumentsByDepartmentQuery query) async {
    final res = await _documentRepository.getDocumentsByDepartment(departmentId: query.departmentId);
    return Result.success(res);
  }
}
import 'package:enterprise_management/application/use_cases/documents/get_documents_by_departments/get_documents_by_departments_query.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetDocumentsByDepartmentsQueryHandler extends IQueryHandler<GetDocumentsByDepartmentsQuery, List<Document>> {
  const GetDocumentsByDepartmentsQueryHandler({required this._documentRepository});
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<List<Document>>> handle(GetDocumentsByDepartmentsQuery query) async {
    final res = await _documentRepository.getDocumentsByDepartments();
    return Result.success(res);
  }
}
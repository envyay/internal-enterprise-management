import 'package:enterprise_management/application/use_cases/documents/get_documents/get_documents_query.dart';
import 'package:enterprise_management/infrastructure/data/dtos/documents/document_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetDocumentsQueryHandler extends IQueryHandler<GetDocumentsQuery, List<DocumentDto>> {
  const GetDocumentsQueryHandler({required this._documentRepository});
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<List<DocumentDto>>> handle(GetDocumentsQuery query) async {
    final res = await _documentRepository.getDocuments();
    return Result.success(res);
  }

}
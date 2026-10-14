import 'package:enterprise_management/application/use_cases/documents/get_documents_by_tickets/get_documents_by_tickets_query.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetDocumentsByTicketsQueryHandler extends IQueryHandler<GetDocumentsByTicketsQuery, List<Document>> {
  const GetDocumentsByTicketsQueryHandler({required this._documentRepository});
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<List<Document>>> handle(GetDocumentsByTicketsQuery query) async {
    final res = await _documentRepository.getDocumentsByTickets();
    return Result.success(res);
  }
}
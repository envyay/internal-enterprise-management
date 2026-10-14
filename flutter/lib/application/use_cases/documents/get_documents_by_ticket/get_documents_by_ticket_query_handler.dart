import 'package:enterprise_management/application/use_cases/documents/get_documents_by_ticket/get_documents_by_ticket_query.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/infrastructure/repositories/document_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetDocumentsByTicketQueryHandler extends IQueryHandler<GetDocumentsByTicketQuery, List<Document>> {
  const GetDocumentsByTicketQueryHandler({required this._documentRepository});
  final IDocumentRepository _documentRepository;

  @override
  Future<Result<List<Document>>> handle(GetDocumentsByTicketQuery query) async {
    final res = await _documentRepository.getDocumentsByTicket(ticketId: query.ticketId);
    return Result.success(res);
  }
}
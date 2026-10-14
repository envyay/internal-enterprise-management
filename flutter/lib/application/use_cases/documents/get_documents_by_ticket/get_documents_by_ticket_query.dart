import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_documents_by_ticket_query.freezed.dart';
@freezed
abstract class GetDocumentsByTicketQuery with _$GetDocumentsByTicketQuery implements IQuery<List<Document>> {
  const factory GetDocumentsByTicketQuery({required String ticketId}) = _GetDocumentsByTicketQuery;
}
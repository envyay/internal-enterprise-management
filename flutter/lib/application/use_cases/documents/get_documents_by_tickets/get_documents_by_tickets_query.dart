import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_documents_by_tickets_query.freezed.dart';
@freezed
abstract class GetDocumentsByTicketsQuery with _$GetDocumentsByTicketsQuery implements IQuery<List<Document>> {
  const factory GetDocumentsByTicketsQuery() = _GetDocumentsByTicketQuery;
}
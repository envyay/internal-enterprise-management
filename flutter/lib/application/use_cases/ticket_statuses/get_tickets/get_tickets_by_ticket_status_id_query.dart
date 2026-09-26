import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_tickets_by_ticket_status_id_query.freezed.dart';
@freezed
abstract class GetTicketsByTicketStatusIdQuery with _$GetTicketsByTicketStatusIdQuery implements IQuery<List<Ticket>> {
  const factory GetTicketsByTicketStatusIdQuery({required String ticketStatusId}) = _GetTicketsByTicketStatusIdQuery;
}
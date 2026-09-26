import 'package:enterprise_management/application/use_cases/ticket_statuses/get_tickets/get_tickets_by_ticket_status_id_query.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tickets_in_ticket_status_controller.g.dart';
@Riverpod()
class TicketsInTicketStatusController extends _$TicketsInTicketStatusController {
  @override
  Future<List<Ticket>> build(String ticketStatusId) async {
    return getTicketsByTicketStatusId(ticketStatusId: ticketStatusId);
  }

  Future<List<Ticket>> getTicketsByTicketStatusId({required String ticketStatusId}) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetTicketsByTicketStatusIdQuery(ticketStatusId: ticketStatusId));
    return res.when(success: (List<Ticket> data) {
      state = AsyncData(data);
      return data;
    }, failure: (AppFailure failure) {
      state = AsyncError(failure, StackTrace.current);
      return [];
    });
  }
}
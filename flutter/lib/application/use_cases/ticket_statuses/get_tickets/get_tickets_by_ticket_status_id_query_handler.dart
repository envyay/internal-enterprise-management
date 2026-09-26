import 'package:enterprise_management/application/use_cases/ticket_statuses/get_tickets/get_tickets_by_ticket_status_id_query.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_status_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetTicketsByTicketStatusIdQueryHandler extends IQueryHandler<GetTicketsByTicketStatusIdQuery, List<Ticket>> {
  const GetTicketsByTicketStatusIdQueryHandler({required this._ticketStatusRepository});
  final ITicketStatusRepository _ticketStatusRepository;

  @override
  Future<Result<List<Ticket>>> handle(GetTicketsByTicketStatusIdQuery query) async {
    final res = await _ticketStatusRepository.getTicketsByTicketStatusId(ticketStatusId: query.ticketStatusId);
    return Result.success(res);
  }
}
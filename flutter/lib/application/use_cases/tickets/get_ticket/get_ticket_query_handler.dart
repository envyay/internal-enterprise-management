import 'package:enterprise_management/application/use_cases/tickets/get_ticket/get_ticket_query.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetTicketQueryHandler extends IQueryHandler<GetTicketQuery, Ticket> {
  const GetTicketQueryHandler({required this._ticketRepository});
  final ITicketRepository _ticketRepository;

  @override
  Future<Result<Ticket>> handle(GetTicketQuery query) async {
    final res = await _ticketRepository.getTicketById(id: query.id);
    return Result.success(res);
  }
}
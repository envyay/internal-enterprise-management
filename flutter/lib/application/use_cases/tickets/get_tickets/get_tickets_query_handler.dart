import 'package:enterprise_management/application/use_cases/tickets/get_tickets/get_tickets_query.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetTicketsQueryHandler extends IQueryHandler<GetTicketsQuery, List<TicketDto?>> {
  const GetTicketsQueryHandler({required this._ticketRepository});
  final ITicketRepository _ticketRepository;
  @override
  Future<Result<List<TicketDto?>>> handle(GetTicketsQuery command) async {
    final res = await _ticketRepository.getTickets();
    return Result.success(res);
  }

}
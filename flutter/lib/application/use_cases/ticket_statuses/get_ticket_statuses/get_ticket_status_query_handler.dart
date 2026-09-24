import 'package:enterprise_management/application/use_cases/ticket_statuses/get_ticket_statuses/get_ticket_status_query.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_status_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetTicketStatusesQueryHandler extends IQueryHandler<GetTicketStatusesQuery, List<TicketStatus>> {
  const GetTicketStatusesQueryHandler({required this._ticketStatusRepository});
  final ITicketStatusRepository _ticketStatusRepository;

  @override
  Future<Result<List<TicketStatus>>> handle(GetTicketStatusesQuery command) async {
    final res = await _ticketStatusRepository.getTicketStatuses();
    return Result.success(res);
  }
}
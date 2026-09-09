import 'package:enterprise_management/application/use_cases/ticket_statuses/get_ticket_statuses/get_ticket_status_query.dart';
import 'package:enterprise_management/infrastructure/data/dtos/ticket_statuses/ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_status_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetTicketStatusQueryHandler extends IQueryHandler<GetTicketStatusQuery, List<TicketStatusDto>> {
  const GetTicketStatusQueryHandler({required this._ticketStatusRepository});
  final ITicketStatusRepository _ticketStatusRepository;

  @override
  Future<Result<List<TicketStatusDto>>> handle(GetTicketStatusQuery command) async {
    final res = await _ticketStatusRepository.getTicketStatuses();
    return Result.success(res);
  }
}
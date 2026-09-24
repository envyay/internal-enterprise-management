import 'package:enterprise_management/application/use_cases/ticket_statuses/get_ticket_status/get_ticket_status_query.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_status_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetTicketStatusQueryHandler extends IQueryHandler<GetTicketStatusQuery, TicketStatus?> {
  const GetTicketStatusQueryHandler({required this._ticketStatusRepository});
  final ITicketStatusRepository _ticketStatusRepository;

  @override
  Future<Result<TicketStatus?>> handle(GetTicketStatusQuery query) async {
    final res = await _ticketStatusRepository.getTicketStatusById(id: query.id);
    return Result.success(res);
  }
}
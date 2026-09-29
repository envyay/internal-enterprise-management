import 'package:enterprise_management/application/use_cases/tickets/get_users/get_users_by_ticket_id_query.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetUsersByTicketIdQueryHandler extends IQueryHandler<GetUsersByTicketIdQuery, List<User>> {
  final ITicketRepository _ticketRepository;
  const GetUsersByTicketIdQueryHandler({required this._ticketRepository});

  @override
  Future<Result<List<User>>> handle(GetUsersByTicketIdQuery query) async {
    final res = await _ticketRepository.getUsersByTicketId(ticketId: query.ticketId);
    return Result.success(res);
  }
}
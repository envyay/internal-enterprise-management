import 'package:enterprise_management/application/use_cases/tickets/set_users_in_ticket/set_users_in_ticket_command.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class SetUsersInTicketCommandHandler extends ICommandHandler<SetUsersInTicketCommand, bool> {
  const SetUsersInTicketCommandHandler({required this._ticketRepository});
  final ITicketRepository _ticketRepository;

  @override
  Future<Result<bool>> handle(SetUsersInTicketCommand command) async {
    final res = await _ticketRepository.setUsersInTicket(id: command.id, userIds: command.userIds);
    return Result.success(res);
  }
}
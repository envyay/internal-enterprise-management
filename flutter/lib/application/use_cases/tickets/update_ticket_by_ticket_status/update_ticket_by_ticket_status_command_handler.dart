import 'package:enterprise_management/application/use_cases/tickets/update_ticket_by_ticket_status/update_ticket_by_ticket_status_command.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UpdateTicketByTicketStatusCommandHandler extends ICommandHandler<UpdateTicketByTicketStatusCommand, bool> {
  const UpdateTicketByTicketStatusCommandHandler({required this._ticketRepository});
  final ITicketRepository _ticketRepository;

  @override
  Future<Result<bool>> handle(UpdateTicketByTicketStatusCommand command) async {
    final res = await _ticketRepository.updateTicketByTicketStatus(id: command.id, ticketStatusId: command.ticketStatusId);
    return Result.success(res);
  }
}
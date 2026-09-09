import 'package:enterprise_management/application/use_cases/tickets/delete_ticket/delete_ticket_command.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class DeleteTicketCommandHandler extends ICommandHandler<DeleteTicketCommand, bool> {
  const DeleteTicketCommandHandler({required this._ticketRepository});

  final ITicketRepository _ticketRepository;

  @override
  Future<Result<bool>> handle(DeleteTicketCommand command) async {
    final res = await _ticketRepository.deleteTicket(id: command.id);
    return Result.success(res);
  }

}
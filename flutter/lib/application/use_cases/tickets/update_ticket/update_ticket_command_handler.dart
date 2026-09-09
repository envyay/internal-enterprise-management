import 'package:enterprise_management/application/use_cases/tickets/update_ticket/update_ticket_command.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UpdateTicketCommandHandler extends ICommandHandler<UpdateTicketCommand, bool> {
  const UpdateTicketCommandHandler({required this._ticketRepository});
  final ITicketRepository _ticketRepository;
  @override
  Future<Result<bool>> handle(UpdateTicketCommand command) async {
    final res = await _ticketRepository.updateTicket(id: command.id, title: command.title, description: command.description);
    return Result.success(res);
  }

}
import 'package:enterprise_management/application/use_cases/ticket_statuses/delete_ticket_status/delete_ticket_status_command.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_status_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class DeleteTicketStatusCommandHandler extends ICommandHandler<DeleteTicketStatusCommand, bool> {
  const DeleteTicketStatusCommandHandler({required this._ticketStatusRepository});
  final ITicketStatusRepository _ticketStatusRepository;
  @override
  Future<Result<bool>> handle(DeleteTicketStatusCommand command) async {
    final res = await _ticketStatusRepository.deleteTicketStatus(id: command.id);
    return Result.success(res);
  }

}
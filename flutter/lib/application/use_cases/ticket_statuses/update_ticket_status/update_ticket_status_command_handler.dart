import 'package:enterprise_management/application/use_cases/ticket_statuses/update_ticket_status/update_ticket_status_command.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_status_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class UpdateTicketStatusCommandHandler extends ICommandHandler<UpdateTicketStatusCommand, bool> {
  const UpdateTicketStatusCommandHandler({required this._ticketStatusRepository});
  final ITicketStatusRepository _ticketStatusRepository;

  @override
  Future<Result<bool>> handle(UpdateTicketStatusCommand command) async {
    final res = await _ticketStatusRepository.updateTicketStatus(id: command.id, name: command.name, projectIds: command.projectIds);
    return Result.success(res);
  }

}
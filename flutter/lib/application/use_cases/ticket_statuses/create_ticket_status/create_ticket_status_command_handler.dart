import 'package:enterprise_management/application/use_cases/ticket_statuses/create_ticket_status/create_ticket_status_command.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_status_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateTicketStatusCommandHandler extends ICommandHandler<CreateTicketStatusCommand, TicketStatus> {
  const CreateTicketStatusCommandHandler({required this._ticketStatusRepository});
  final ITicketStatusRepository _ticketStatusRepository;

  @override
  Future<Result<TicketStatus>> handle(CreateTicketStatusCommand command) async {
    final res = await _ticketStatusRepository.createTicketStatus(name: command.name, projectId: command.projectId);
    return Result.success(res);
  }

}
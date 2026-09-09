import 'package:enterprise_management/application/use_cases/ticket_statuses/create_ticket_status/create_ticket_status_command.dart';
import 'package:enterprise_management/infrastructure/data/dtos/ticket_statuses/ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_status_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateTicketStatusCommandHandler extends ICommandHandler<CreateTicketStatusCommand, TicketStatusDto> {
  const CreateTicketStatusCommandHandler({required this._ticketStatusRepository});
  final ITicketStatusRepository _ticketStatusRepository;

  @override
  Future<Result<TicketStatusDto>> handle(CreateTicketStatusCommand command) async {
    final res = await _ticketStatusRepository.createTicketStatus(name: command.name, projectId: command.projectId);
    return Result.success(res);
  }

}
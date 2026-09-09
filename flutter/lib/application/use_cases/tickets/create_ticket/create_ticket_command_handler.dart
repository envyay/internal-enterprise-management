import 'package:enterprise_management/application/use_cases/tickets/create_ticket/create_ticket_command.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/repositories/ticket_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class CreateTicketCommandHandler extends ICommandHandler<CreateTicketCommand, TicketDto?> {
  const CreateTicketCommandHandler({required this._ticketRepository});
  final ITicketRepository _ticketRepository;

  @override
  Future<Result<TicketDto?>> handle(CreateTicketCommand command) async {
    final res = await _ticketRepository.createTicket(title: command.title, description: command.description);
    return Result.success(res);
  }
}
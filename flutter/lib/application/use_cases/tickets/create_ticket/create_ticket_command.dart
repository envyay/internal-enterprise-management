import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_ticket_command.freezed.dart';
@freezed
abstract class CreateTicketCommand with _$CreateTicketCommand implements ICommand<TicketDto?> {
  const factory CreateTicketCommand({required String title, required String description}) = _CreateTicketCommand;
}
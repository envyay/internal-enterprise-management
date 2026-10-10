import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_ticket_by_ticket_status_command.freezed.dart';
@freezed
abstract class UpdateTicketByTicketStatusCommand with _$UpdateTicketByTicketStatusCommand implements ICommand<bool> {
  const factory UpdateTicketByTicketStatusCommand({required String id, required String ticketStatusId}) = _UpdateTicketByTicketStatusCommand;
}
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_ticket_status_command.freezed.dart';
@freezed
abstract class UpdateTicketStatusCommand with _$UpdateTicketStatusCommand implements ICommand<bool> {
  const factory UpdateTicketStatusCommand({required String id, required String name}) = _UpdateTicketStatusCommand;
}
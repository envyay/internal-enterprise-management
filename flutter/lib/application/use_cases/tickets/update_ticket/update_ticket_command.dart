import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_ticket_command.freezed.dart';
@freezed
abstract class UpdateTicketCommand with _$UpdateTicketCommand implements ICommand<bool> {
  const factory UpdateTicketCommand({required String id, required String title, required String description}) = _UpdateTicketCommand;
}
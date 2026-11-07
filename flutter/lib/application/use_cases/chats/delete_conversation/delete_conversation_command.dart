import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_conversation_command.freezed.dart';
@freezed
abstract class DeleteConversationCommand with _$DeleteConversationCommand implements ICommand<bool> {
  const factory DeleteConversationCommand({required String id}) = _DeleteConversationCommand;
}
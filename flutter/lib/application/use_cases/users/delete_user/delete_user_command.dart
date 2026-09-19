import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_command.freezed.dart';
@freezed
abstract class DeleteUserCommand with _$DeleteUserCommand implements ICommand<bool> {
  const factory DeleteUserCommand({required String id}) = _DeleteUserCommand;
}
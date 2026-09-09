import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_group_command.freezed.dart';
@freezed
abstract class DeleteUserGroupCommand with _$DeleteUserGroupCommand implements ICommand<bool> {
  const factory DeleteUserGroupCommand({required String id}) = _DeleteUserGroupCommand;
}
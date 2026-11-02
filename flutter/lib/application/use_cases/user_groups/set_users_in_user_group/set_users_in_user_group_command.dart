import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_users_in_user_group_command.freezed.dart';
@freezed
abstract class SetUsersInUserGroupCommand with _$SetUsersInUserGroupCommand implements ICommand<bool> {
  const factory SetUsersInUserGroupCommand({required String id, required List<String> userIds}) = _SetUsersInUserGroupCommand;
}
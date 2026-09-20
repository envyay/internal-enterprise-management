import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_users_to_user_group_command.freezed.dart';
@freezed
abstract class AddUsersToUserGroupCommand with _$AddUsersToUserGroupCommand implements ICommand<bool> {
  const factory AddUsersToUserGroupCommand({required String id, required List<String> usersIds}) = _AddUsersToUserGroupCommand;
}
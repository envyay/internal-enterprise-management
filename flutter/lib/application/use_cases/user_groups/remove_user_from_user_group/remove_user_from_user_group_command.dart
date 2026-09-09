import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_user_from_user_group_command.freezed.dart';
@freezed
abstract class RemoveUserFromUserGroupCommand with _$RemoveUserFromUserGroupCommand implements ICommand<bool> {
  const factory RemoveUserFromUserGroupCommand({required String id, required UserDto userId}) = _RemoveUserFromUserGroupCommand;
}
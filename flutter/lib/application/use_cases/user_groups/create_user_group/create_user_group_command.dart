import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_group_command.freezed.dart';
@freezed
abstract class CreateUserGroupCommand with _$CreateUserGroupCommand implements ICommand<UserGroup> {
  const factory CreateUserGroupCommand({required String name, required List<UserDto> userIds}) = _CreateUserGroupCommand;
}
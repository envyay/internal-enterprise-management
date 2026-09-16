import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_group_command.freezed.dart';
@freezed
abstract class UpdateUserGroupCommand with _$UpdateUserGroupCommand implements ICommand<bool> {
  const factory UpdateUserGroupCommand({required String id, required String name, required List<String?> userIds}) = _UpdateUserGroupCommand;
}
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_users_in_department_command.freezed.dart';

@freezed
abstract class SetUsersInDepartmentCommand with _$SetUsersInDepartmentCommand implements ICommand<bool> {
  const factory SetUsersInDepartmentCommand({required String id, required List<String> userIds}) = _SetUsersInDepartmentCommand;
}
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_users_in_project_command.freezed.dart';
@freezed
abstract class SetUsersInProjectCommand with _$SetUsersInProjectCommand implements ICommand<bool> {
  const factory SetUsersInProjectCommand({required String id, required List<String> userIds}) = _SetUsersInProjectCommand;
}
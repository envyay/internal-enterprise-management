import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_policies_in_user_group_command.freezed.dart';
@freezed
abstract class SetPoliciesInUserGroupCommand with _$SetPoliciesInUserGroupCommand implements ICommand<bool> {
  const factory SetPoliciesInUserGroupCommand({required String id, required List<String> policies}) = _SetPoliciesInUserGroupCommand;
}
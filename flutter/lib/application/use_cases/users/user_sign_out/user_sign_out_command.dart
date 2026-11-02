import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_out_command.freezed.dart';
@freezed
abstract class UserSignOutCommand with _$UserSignOutCommand implements ICommand<void> {
  const factory UserSignOutCommand() = _UserSignOutCommand;
}
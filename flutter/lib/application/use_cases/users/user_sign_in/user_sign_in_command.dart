import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_in_command.freezed.dart';

@freezed
abstract class UserSignInCommand with _$UserSignInCommand implements ICommand<bool> {
  const factory UserSignInCommand({required String email}) = _UserSignInCommand;
}
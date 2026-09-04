import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_sign_in_verify_command.freezed.dart';

@freezed
abstract class UserSignInVerifyCommand with _$UserSignInVerifyCommand implements ICommand<bool> {
  const factory UserSignInVerifyCommand({required String email, required String otp}) = _UserSignInVerifyCommand;
}
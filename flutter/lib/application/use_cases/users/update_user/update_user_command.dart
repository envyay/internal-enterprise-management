import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_command.freezed.dart';
@freezed
abstract class UpdateUserCommand with _$UpdateUserCommand implements ICommand<bool> {
  const factory UpdateUserCommand({required String id, required String fullName, required String email, required int status}) = _UpdateUserCommand;
}
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user_command.freezed.dart';
@freezed
abstract class CreateUserCommand with _$CreateUserCommand implements ICommand<String> {
  const factory CreateUserCommand({required String fullName, required String email}) = _CreateUserCommand;
}
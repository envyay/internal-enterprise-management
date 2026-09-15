import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_department_command.freezed.dart';
@freezed
abstract class DeleteDepartmentCommand with _$DeleteDepartmentCommand implements ICommand<bool?> {
  const factory DeleteDepartmentCommand({required String id}) = _DeleteDepartmentCommand;
}
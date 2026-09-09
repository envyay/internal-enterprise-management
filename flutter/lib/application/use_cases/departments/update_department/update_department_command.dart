import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_department_command.freezed.dart';
@freezed
abstract class UpdateDepartmentCommand with _$UpdateDepartmentCommand implements ICommand<bool> {
  const factory UpdateDepartmentCommand({required String id, required String name}) = _UpdateDepartmentCommand;
}
import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_department_command.freezed.dart';
@freezed
abstract class CreateDepartmentCommand with _$CreateDepartmentCommand implements ICommand<String> {
  const factory CreateDepartmentCommand({required String name}) = _CreateDepartmentCommand;
}
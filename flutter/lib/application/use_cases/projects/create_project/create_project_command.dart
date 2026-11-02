import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_project_command.freezed.dart';
@freezed
abstract class CreateProjectCommand with _$CreateProjectCommand implements ICommand<String> {
  const factory CreateProjectCommand({required String name, required String description, required String code}) = _CreateProjectCommand;

}
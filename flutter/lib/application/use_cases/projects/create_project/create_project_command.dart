import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_project_command.freezed.dart';
@freezed
abstract class CreateProjectCommand with _$CreateProjectCommand implements ICommand<ProjectDto> {
  const factory CreateProjectCommand({required String name}) = _CreateProjectCommand;

}
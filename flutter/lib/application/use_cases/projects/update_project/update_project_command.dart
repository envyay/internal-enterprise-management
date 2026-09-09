import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_project_command.freezed.dart';
@freezed
abstract class UpdateProjectCommand with _$UpdateProjectCommand implements ICommand<bool> {
  const factory UpdateProjectCommand({required String id, required String name}) = _UpdateProjectCommand;

}
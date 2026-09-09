import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_project_command.freezed.dart';
@freezed
abstract class DeleteProjectCommand with _$DeleteProjectCommand implements ICommand<bool> {
  const factory DeleteProjectCommand({required String id}) = _DeleteProjectCommand;
}
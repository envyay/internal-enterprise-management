import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_comment_command.freezed.dart';
@freezed
abstract class UpdateCommentCommand with _$UpdateCommentCommand implements ICommand<bool> {
  const factory UpdateCommentCommand({required String id, required String content}) = _UpdateCommentCommand;
}
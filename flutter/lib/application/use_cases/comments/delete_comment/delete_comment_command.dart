import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_comment_command.freezed.dart';
@freezed
abstract class DeleteCommentCommand with _$DeleteCommentCommand implements ICommand<bool> {
  const factory DeleteCommentCommand({required String id}) = _DeleteCommentCommand;
}
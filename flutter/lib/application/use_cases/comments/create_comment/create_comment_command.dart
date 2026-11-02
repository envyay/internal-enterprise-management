import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_comment_command.freezed.dart';
@freezed
abstract class CreateCommentCommand with _$CreateCommentCommand implements ICommand<String> {
  const factory CreateCommentCommand({required String content, required String ticketId}) = _CreateCommentCommand;
}
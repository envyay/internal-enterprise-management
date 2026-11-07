import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_chat_message_command.freezed.dart';
@freezed
abstract class CreateChatMessageCommand with _$CreateChatMessageCommand implements ICommand<String> {
  const factory CreateChatMessageCommand({required String content, required bool isUser, required String conversationId}) = _CreateChatMessageCommand;
}
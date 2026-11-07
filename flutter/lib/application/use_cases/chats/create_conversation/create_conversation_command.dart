import 'package:enterprise_management/domain/aggregates/conversation/conversation.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_conversation_command.freezed.dart';
@freezed
abstract class CreateConversationCommand with _$CreateConversationCommand implements ICommand<Conversation> {
  const factory CreateConversationCommand({
    String? title,
    String? query,
    String? id,
  }) = _CreateConversationCommand;
}

import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_command.freezed.dart';
@freezed
abstract class ChatCommand with _$ChatCommand implements ICommand<Stream> {
  const factory ChatCommand({required String query, required String threadId}) = _ChatCommand;
}
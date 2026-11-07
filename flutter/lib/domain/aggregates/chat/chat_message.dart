import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'chat_message.mapper.dart';

@MappableClass()
class ChatMessage extends AggregateRoot<String> with ChatMessageMappable {
  ChatMessage({
    required super.id,
    required this.conversationId,
    required this.content,
    required this.isUser,
    this.status,
    this.isStreaming = false,
    this.isError = false,
  });

  final String conversationId;
  final String content;
  final bool isUser;
  final String? status;
  final bool? isStreaming;
  final bool? isError;
}

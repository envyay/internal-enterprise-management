import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'chat_message.mapper.dart';

@MappableClass()
class ChatMessage extends AggregateRoot<String> with ChatMessageMappable {
  ChatMessage({
    required super.id,
    required this.text,
    required this.isUser,
    required this.timestamp,
    this.status,
    this.isStreaming = false,
    this.isError = false,
  });

  final String text;
  final bool isUser;
  final DateTime timestamp;
  final String? status;
  final bool? isStreaming;
  final bool? isError;
}

@MappableClass()
class ChatState with ChatStateMappable {
  ChatState({
    this.messages = const [],
    this.threadId = '',
    this.isLoading = false,
    this.currentStatus,
  });

  final List<ChatMessage> messages;
  final String? threadId;
  final bool isLoading;
  final String? currentStatus;
}

import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/domain/aggregates/chat/chat_message.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'conversation.mapper.dart';
@MappableClass()
class Conversation extends AggregateRoot<String> with ConversationMappable {

  Conversation({required super.id, required this.userId, this.title, this.chatMessage});

  final String userId;
  final String? title;
  final List<ChatMessage>? chatMessage;
}
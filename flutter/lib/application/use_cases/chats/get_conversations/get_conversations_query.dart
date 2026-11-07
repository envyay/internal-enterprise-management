import 'package:enterprise_management/domain/aggregates/conversation/conversation.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_conversations_query.freezed.dart';
@freezed
abstract class GetConversationsQuery with _$GetConversationsQuery implements IQuery<List<Conversation>> {
  const factory GetConversationsQuery() = _GetConversationsQuery;
}
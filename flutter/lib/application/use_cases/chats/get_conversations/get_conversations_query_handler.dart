import 'package:enterprise_management/application/use_cases/chats/get_conversations/get_conversations_query.dart';
import 'package:enterprise_management/domain/aggregates/conversation/conversation.dart';
import 'package:enterprise_management/infrastructure/repositories/chat_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetConversationsQueryHandler extends IQueryHandler<GetConversationsQuery, List<Conversation>> {
  const GetConversationsQueryHandler({required this._chatRepository});
  final IChatRepository _chatRepository;

  @override
  Future<Result<List<Conversation>>> handle(GetConversationsQuery query) async {
    final res = await _chatRepository.getConversations();
    return Result.success(res);
  }
}
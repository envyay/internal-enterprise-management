import 'package:enterprise_management/infrastructure/data/dtos/api_requests/chat_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/chat_service/chat_remote_data_source.dart';

abstract interface class IChatRepository {
  Future<Stream> chat({required String query, required String threadId});
}

class ChatRepository implements IChatRepository {
  const ChatRepository({required this._chatRemoteDataSource});
  final ChatRemoteDataSource _chatRemoteDataSource;

  @override
  Future<Stream> chat({required String query, required String threadId}) async {
    return _chatRemoteDataSource.chat(ChatDto(query: query, threadId: threadId));
  }
}
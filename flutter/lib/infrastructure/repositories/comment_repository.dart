import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/comments/comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/comment_service/comment_remote_data_source.dart';

abstract interface class ICommentRepository {
  Future<List<CommentDto>> getComments();
  Future<CommentDto> getCommentById({required String id});
  Future<CommentDto> createComment({required TicketDto ticketId, required UserDto userId, required String content});
  Future<bool> updateComment({required String id, required String content});
  Future<bool> deleteComment({required String id});
}

class CommentRepository implements ICommentRepository {
  const CommentRepository({required this._commentRemoteDataSource});
  final CommentRemoteDataSource _commentRemoteDataSource;

  @override
  Future<CommentDto> createComment({required TicketDto ticketId, required UserDto userId, required String content}) async {
    final res = await _commentRemoteDataSource.createComment(CreateCommentDto(content: content, ticketId: ticketId, userId: userId));
    return res.data;
  }

  @override
  Future<bool> deleteComment({required String id}) async {
    final res = await _commentRemoteDataSource.deleteComment(DeleteCommentDto(id: id));
    return res.data;
  }

  @override
  Future<CommentDto> getCommentById({required String id}) {
    // TODO: implement getCommentById
    throw UnimplementedError();
  }

  @override
  Future<List<CommentDto>> getComments() async {
    final res = await _commentRemoteDataSource.getComments();
    return res.data;
  }

  @override
  Future<bool> updateComment({required String id, required String content}) async {
    final res = await _commentRemoteDataSource.updateComment(UpdateCommentDto(id: id, content: content));
    return res.data;
  }
}
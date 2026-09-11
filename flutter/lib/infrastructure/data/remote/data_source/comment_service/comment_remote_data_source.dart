import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/comments/comment_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'comment_remote_data_source.g.dart';
@RestApi()
abstract class CommentRemoteDataSource {
  factory CommentRemoteDataSource(Dio dio, {String? baseUrl}) = _CommentRemoteDataSource;

  @GET('GetAll')
  Future<ApiResponse<List<CommentDto>>> getComments();

  @POST('Create')
  Future<ApiResponse<CommentDto>> createComment(@Body() CreateCommentDto body);
  
  @PUT('Update')
  Future<ApiResponse<bool>> updateComment(@Body() UpdateCommentDto body);

  @DELETE('Delete/{id}')
  Future<ApiResponse<bool>> deleteComment(@Body() DeleteCommentDto body);
}
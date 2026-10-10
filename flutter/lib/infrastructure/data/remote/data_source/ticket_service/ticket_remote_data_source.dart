import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/set_users_in_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_ticket_by_ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/comments/comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:retrofit/retrofit.dart';

part 'ticket_remote_data_source.g.dart';
@RestApi()
abstract class TicketRemoteDataSource {
  factory TicketRemoteDataSource(Dio dio, {String? baseUrl}) = _TicketRemoteDataSource;
  @GET('GetAll')
  Future<ApiResponse<List<TicketDto>>> getTickets();

  @GET('{id}/Users')
  Future<ApiResponse<List<UserDto>>> getUsersByTicketId(@Path('id') String id);

  @GET('{id}/Comments')
  Future<ApiResponse<List<CommentDto>>> getCommentsByTicketId(@Path('id') String id);

  @GET('{id}')
  Future<ApiResponse<TicketDto>> getTicketById(@Path('id') String id);

  @POST('Create')
  Future<ApiResponse<String>> createTicket(@Body() CreateTicketDto body);

  @PUT('Update')
  Future<ApiResponse<bool>> updateTicket(@Body() UpdateTicketDto body);
  
  @PUT('UpdateByTicketStatus')
  Future<ApiResponse<bool>> updateTicketByTicketStatus(@Body() UpdateTicketByTicketStatusDto body);
  
  @PUT('SetUsers')
  Future<ApiResponse<bool>> setUsersInTicket(@Body() SetUsersInTicketDto body);
  
  @DELETE('{id}')
  Future<ApiResponse<bool>> deleteTicket(@Path('id') String id);
}
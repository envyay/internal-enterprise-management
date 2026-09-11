import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/ticket_statuses/ticket_status_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'ticket_status_remote_data_source.g.dart';
@RestApi()
abstract class TicketStatusRemoteDataSource {
  factory TicketStatusRemoteDataSource(Dio dio, {String? baseUrl}) = _TicketStatusRemoteDataSource;

  @GET('GetAll')
  Future<ApiResponse<List<TicketStatusDto>>> getTicketStatuses();

  @POST('Create')
  Future<ApiResponse<TicketStatusDto>> createTicketStatus(@Body() CreateTicketStatusDto body);

  @PUT('Update')
  Future<ApiResponse<bool>> updateTicketStatus(@Body() UpdateTicketStatusDto body);
  
  @DELETE('Delete/{id}')
  Future<ApiResponse<bool>> deleteTicketStatus(@Body() DeleteTicketStatusDto body);
}
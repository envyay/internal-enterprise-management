import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'ticket_remote_data_source.g.dart';
@RestApi()
abstract class TicketRemoteDataSource {
  factory TicketRemoteDataSource(Dio dio, {String? baseUrl}) = _TicketRemoteDataSource;

  @GET('GetAll')
  Future<ApiResponse<List<TicketDto?>>> getTickets();

  @POST('Create')
  Future<ApiResponse<TicketDto?>> createTicket(@Body() CreateTicketDto body);

  @PUT('Update')
  Future<ApiResponse<bool>> updateTicket(@Body() UpdateTicketDto body);
  
  @DELETE('Delete/{id}')
  Future<ApiResponse<bool>> deleteTicket(@Body() DeleteTicketDto body);
}
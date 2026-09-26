import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/ticket_statuses/ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/ticket_status_service/ticket_status_remote_data_source.dart';

abstract interface class ITicketStatusRepository {
  Future<List<TicketStatus>> getTicketStatuses();
  Future<TicketStatus?> getTicketStatusById({required String id});
  Future<List<Ticket>> getTicketsByTicketStatusId({required String ticketStatusId});
  Future<TicketStatus> createTicketStatus({required String name, required String projectId});
  Future<bool> updateTicketStatus({required String id, required String name});
  Future<bool> deleteTicketStatus({required String id});
}

class TicketStatusRepository implements ITicketStatusRepository {
  const TicketStatusRepository({required this._ticketStatusRemoteDataSource});
  final TicketStatusRemoteDataSource _ticketStatusRemoteDataSource;
  @override
  Future<TicketStatus> createTicketStatus({required String name, required String projectId}) async {
    final res = await _ticketStatusRemoteDataSource.createTicketStatus(CreateTicketStatusDto(name: name, projectId: projectId));
    return res.data.map((item) => item.toAggregate());
  }

  @override
  Future<bool> deleteTicketStatus({required String id}) async {
    final res = await _ticketStatusRemoteDataSource.deleteTicketStatus(id);
    return res.data;
  }

  @override
  Future<TicketStatus?> getTicketStatusById({required String id}) async {
    final res = await _ticketStatusRemoteDataSource.getTicketStatusById(id);
    return res.data?.map((item) => item.toAggregate());
  }

  @override
  Future<List<TicketStatus>> getTicketStatuses() async {
    final res = await _ticketStatusRemoteDataSource.getTicketStatuses();
    return res.data.map((item) => item.toAggregate()).toList();
  }

  @override
  Future<bool> updateTicketStatus({required String id, required String name}) async {
    final res = await _ticketStatusRemoteDataSource.updateTicketStatus(UpdateTicketStatusDto(id: id, name: name));
    return res.data;
  }

  @override
  Future<List<Ticket>> getTicketsByTicketStatusId({required String ticketStatusId}) async {
    final res = await _ticketStatusRemoteDataSource.getTicketsByTicketStatusId(ticketStatusId);
    return res.data.map((item) => item.toAggregate()).toList();
  }

}
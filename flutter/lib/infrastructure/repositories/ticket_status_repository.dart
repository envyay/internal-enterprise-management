import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/ticket_statuses/ticket_status_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/ticket_status_service/ticket_status_remote_data_source.dart';

abstract interface class ITicketStatusRepository {
  Future<List<TicketStatusDto>> getTicketStatuses();
  Future<TicketStatusDto> getTicketStatusById({required String id});
  Future<TicketStatusDto> createTicketStatus({required String name, required ProjectDto projectId});
  Future<bool> updateTicketStatus({required String id, required String name, required List<ProjectDto> projectIds});
  Future<bool> deleteTicketStatus({required String id});
}

class TicketStatusRepository implements ITicketStatusRepository {
  const TicketStatusRepository({required this._ticketStatusRemoteDataSource});
  final TicketStatusRemoteDataSource _ticketStatusRemoteDataSource;
  @override
  Future<TicketStatusDto> createTicketStatus({required String name, required ProjectDto projectId}) async {
    final res = await _ticketStatusRemoteDataSource.createTicketStatus(CreateTicketStatusDto(name: name, projectId: projectId));
    return res.data;
  }

  @override
  Future<bool> deleteTicketStatus({required String id}) async {
    final res = await _ticketStatusRemoteDataSource.deleteTicketStatus(DeleteTicketStatusDto(id: id));
    return res.data;
  }

  @override
  Future<TicketStatusDto> getTicketStatusById({required String id}) {
    // TODO: implement getTicketStatusById
    throw UnimplementedError();
  }

  @override
  Future<List<TicketStatusDto>> getTicketStatuses() async {
    final res = await _ticketStatusRemoteDataSource.getTicketStatuses();
    return res.data;
  }

  @override
  Future<bool> updateTicketStatus({required String id, required String name, required List<ProjectDto> projectIds}) async {
    final res = await _ticketStatusRemoteDataSource.updateTicketStatus(UpdateTicketStatusDto(id: id, name: name, projectIds: projectIds));
    return res.data;
  }

}
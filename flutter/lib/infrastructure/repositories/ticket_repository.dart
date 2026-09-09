import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/ticket_service/ticket_remote_data_source.dart';

abstract interface class ITicketRepository {
  Future<List<TicketDto?>> getTickets();

  Future<TicketDto?> createTicket({
    required String title,
    required String description,
  });

  Future<TicketDto> getTicketById({required String id});

  Future<bool> updateTicket({
    required String id,
    required String title,
    required String description,
  });

  Future<bool> deleteTicket({required String id});
}

class TicketRepository implements ITicketRepository {
  const TicketRepository({required this._ticketRemoteDataSource});

  final TicketRemoteDataSource _ticketRemoteDataSource;
  @override
  Future<TicketDto?> createTicket({
    required String title,
    required String description,
  }) async {
    final res = await _ticketRemoteDataSource.createTicket(CreateTicketDto(title: title, description: description));
    return res.data;
  }

  @override
  Future<bool> deleteTicket({required String id}) async {
    final res = await _ticketRemoteDataSource.deleteTicket(DeleteTicketDto(id: id));
    return res.data;
  }

  @override
  Future<TicketDto> getTicketById({required String id}) {
    // TODO: implement getTicketById
    throw UnimplementedError();
  }

  @override
  Future<List<TicketDto?>> getTickets() async {
    final res = await _ticketRemoteDataSource.getTickets();
    return res.data;
  }

  @override
  Future<bool> updateTicket({
    required String id,
    required String title,
    required String description,
  }) async {
    final res = await _ticketRemoteDataSource.updateTicket(UpdateTicketDto(id: id, title: title, description: description));
    return res.data;
  }
}

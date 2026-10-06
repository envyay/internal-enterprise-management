import 'package:enterprise_management/domain/aggregates/comment/comment.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/set_users_in_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/comments/comment_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/tickets/ticket_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/ticket_service/ticket_remote_data_source.dart';

abstract interface class ITicketRepository {
  Future<List<Ticket>> getTickets();

  Future<String> createTicket({
    required String title,
    required String description,
    required String ticketStatusId,
    required List<String> userIds
  });

  Future<Ticket> getTicketById({required String id});

  Future<List<User>> getUsersByTicketId({required String ticketId});

  Future<List<Comment>> getCommentsByTicketId({required String ticketId});

  Future<bool> setUsersInTicket({required String id, required List<String> userIds});

  Future<bool> updateTicket({
    required String id,
    required String title,
    required String description,
    required String ticketStatusId
    // required List<String> userIds,
  });

  Future<bool> deleteTicket({required String id});
}

class TicketRepository implements ITicketRepository {
  const TicketRepository({required this._ticketRemoteDataSource});

  final TicketRemoteDataSource _ticketRemoteDataSource;
  @override
  Future<String> createTicket({
    required String title,
    required String description,
    required String ticketStatusId,
    required List<String> userIds
  }) async {
    final res = await _ticketRemoteDataSource.createTicket(CreateTicketDto(title: title, description: description, ticketStatusId: ticketStatusId, userIds: userIds));
    return res.data;
  }

  @override
  Future<bool> deleteTicket({required String id}) async {
    final res = await _ticketRemoteDataSource.deleteTicket(id);
    return res.data;
  }

  @override
  Future<Ticket> getTicketById({required String id}) async {
    final res = await _ticketRemoteDataSource.getTicketById(id);
    return res.data.map((item) => item.toAggregate());
  }

  @override
  Future<List<Ticket>> getTickets() async {
    final res = await _ticketRemoteDataSource.getTickets();
    return res.data.map((item) => item.toAggregate()).toList();
  }

  @override
  Future<bool> updateTicket({
    required String id,
    required String title,
    required String description,
    required String ticketStatusId,
    // required List<String> userIds,
  }) async {
    final res = await _ticketRemoteDataSource.updateTicket(UpdateTicketDto(id: id, title: title, description: description, ticketStatusId: ticketStatusId));
    return res.data;
  }

  @override
  Future<List<User>> getUsersByTicketId({required String ticketId}) async {
    final res = await _ticketRemoteDataSource.getUsersByTicketId(ticketId);
    return res.data.map((item) => item.toAggregate()).toList();
  }

  @override
  Future<bool> setUsersInTicket({required String id, required List<String> userIds}) async {
    final res = await _ticketRemoteDataSource.setUsersInTicket(SetUsersInTicketDto(id: id, userIds: userIds));
    return res.data;
  }

  @override
  Future<List<Comment>> getCommentsByTicketId({required String ticketId}) async {
    final res = await _ticketRemoteDataSource.getCommentsByTicketId(ticketId);
    return res.data.map((item) => item.toAggregate()).toList();
  }
}

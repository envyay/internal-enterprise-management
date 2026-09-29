import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_users_by_ticket_id_query.freezed.dart';
@freezed
abstract class GetUsersByTicketIdQuery with _$GetUsersByTicketIdQuery implements IQuery<List<User>> {
  const factory GetUsersByTicketIdQuery({required String ticketId}) = _GetUsersByTicketIdQuery;
}
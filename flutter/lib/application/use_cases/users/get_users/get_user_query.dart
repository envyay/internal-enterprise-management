import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_query.freezed.dart';
@freezed
abstract class GetUserQuery with _$GetUserQuery implements IQuery<List<User>> {
  const factory GetUserQuery() = _GetUserQuery;
}
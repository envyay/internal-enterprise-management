import 'package:enterprise_management/shared_kernel/cqrs/query.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_policies_query.freezed.dart';
@freezed
abstract class GetPoliciesQuery with _$GetPoliciesQuery implements IQuery<List<String>> {
  const factory GetPoliciesQuery() = _GetPoliciesQuery;
}
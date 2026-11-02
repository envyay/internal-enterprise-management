import 'package:enterprise_management/application/use_cases/user_group_policies/get_user_group_policies/get_user_group_policies_query.dart';
import 'package:enterprise_management/domain/aggregates/user_group_policy/user_group_policy.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'policies_controller.g.dart';
@Riverpod()
class PoliciesController extends _$PoliciesController {
  @override
  Future<List<UserGroupPolicy>> build() {
    return getPolicies();
  }

  Future<List<UserGroupPolicy>> getPolicies() async {
    final mediator = ref.read(mediatorProvider);
    state = AsyncLoading();
    final res = await mediator.query(GetUserGroupPoliciesQuery());
    return res.when(
      success: (List<UserGroupPolicy> data) {
        state = AsyncData(data);
        return data;
      },
      failure: (AppFailure failure) {
        state = AsyncError(failure, StackTrace.current);
        return [];
      },
    );
  }

  void refresh() async {
    final data = await getPolicies();
    state = AsyncValue.data(data);
  }
}
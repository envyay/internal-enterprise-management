import 'package:enterprise_management/application/use_cases/user_groups/get_user_group/get_user_group_query.dart';
import 'package:enterprise_management/application/use_cases/user_groups/set_policies_in_user_group/set_policies_in_user_group_command.dart';
import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/shared_kernel/cqrs/mediator.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'policies_in_user_group_controller.g.dart';
@Riverpod(keepAlive: true)
class PoliciesInUserGroupController extends _$PoliciesInUserGroupController {
  @override
  Future<UserGroup?> build() async {
    return null;
  }

  Future<void> getPoliciesInUserGroup({required String id}) async {
    state = const AsyncLoading();
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetUserGroupQuery(id: id));

    if (!ref.mounted) return;

    res.when(
      success: (userGroup) {
        state = AsyncData(userGroup);
      },
      failure: (error) {
        state = AsyncError(error, StackTrace.current);
      },
    );
  }

  Future<void> setPoliciesInUserGroup({
    required String id,
    required List<String> policies,
  }) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.send(
      SetPoliciesInUserGroupCommand(id: id, policies: policies),
    );

    res.when(
      success: (success) {
        if (success) {
          getPoliciesInUserGroup(id: id);
        }
      },
      failure: (error) {
        state = AsyncError(error, StackTrace.current);
      },
    );
  }
}
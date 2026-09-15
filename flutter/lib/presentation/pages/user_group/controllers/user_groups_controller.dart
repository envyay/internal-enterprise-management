import 'package:enterprise_management/application/use_cases/user_groups/get_user_groups/get_user_groups_query.dart';
import 'package:enterprise_management/domain/aggregates/user_group/user_group.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_groups_controller.g.dart';

@Riverpod()
class UserGroupsController extends _$UserGroupsController {
  @override
  Future<List<UserGroup>> build() {
    return getUserGroups();
  }

  Future<List<UserGroup>> getUserGroups() async {
    final mediator = ref.read(mediatorProvider);
    state = AsyncLoading();
    final res = await mediator.query(GetUserGroupsQuery());
    return res.when(
      success: (List<UserGroup> data) {
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
    final data = await getUserGroups();
    state = AsyncValue.data(data);
  }

  void onSelect(String id) {
    final items = state.value;
    if (items == null) return;

    final newItems = items.map((item) {
      if (item.id == id) {
        return item.copyWith.call(isActive: true);
      }
      return item.copyWith.call(isActive: false);
    }).toList();

    state = AsyncData(newItems);
  }
}

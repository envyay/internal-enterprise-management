import 'package:enterprise_management/application/use_cases/users/get_users/get_user_query.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'users_controller.g.dart';

@Riverpod()
class UsersController extends _$UsersController {
  @override
  Future<List<User>> build() {
    return getUsers();
  }

  Future<List<User>> getUsers() async {
    final mediator = ref.read(mediatorProvider);
    state = AsyncLoading();
    final res = await mediator.query(GetUserQuery());
    return res.when(
      success: (List<User> data) {
        state = AsyncData(data);
        return data;
      },
      failure: (AppFailure failure) {
        state = AsyncError(failure, StackTrace.current);
        return [];
      },
    );
  }
}

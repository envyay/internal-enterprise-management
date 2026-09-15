import 'package:enterprise_management/application/use_cases/users/get_users/get_user_query.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/infrastructure/repositories/user_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetUserQueryHandler extends IQueryHandler<GetUserQuery, List<User>> {
  const GetUserQueryHandler({required this._userRepository});
  final IUserRepository _userRepository;

  @override
  Future<Result<List<User>>> handle(GetUserQuery query) async {
    final res = await _userRepository.getUsers();
    return Result.success(res);
  }

}
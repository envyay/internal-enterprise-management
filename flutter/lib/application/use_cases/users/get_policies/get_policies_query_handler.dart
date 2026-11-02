import 'package:enterprise_management/application/use_cases/users/get_policies/get_policies_query.dart';
import 'package:enterprise_management/infrastructure/repositories/user_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query_handler.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetPoliciesQueryHandler extends IQueryHandler<GetPoliciesQuery, List<String>> {
  const GetPoliciesQueryHandler({required this._userRepository});
  final IUserRepository _userRepository;

  @override
  Future<Result<List<String>>> handle(GetPoliciesQuery query) async {
    final res = await _userRepository.getPolicies();
    return Result.success(res);
  }

}
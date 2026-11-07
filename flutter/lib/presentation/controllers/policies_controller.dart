import 'package:enterprise_management/application/use_cases/users/get_policies/get_policies_query.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'policies_controller.g.dart';

@Riverpod()
class PoliciesController extends _$PoliciesController {
  @override
  Future<List<String>> build() {
    return getPolicies();
  }

  Future<List<String>> getPolicies() async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetPoliciesQuery());
    return res.when(
      success: (List<String> data) {
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
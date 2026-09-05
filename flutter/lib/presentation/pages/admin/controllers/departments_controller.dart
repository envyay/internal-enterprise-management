import 'package:enterprise_management/application/use_cases/departments/get_departments/get_departments_query.dart';
import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'departments_controller.g.dart';

@Riverpod()
class DepartmentsController extends _$DepartmentsController {
  @override
  Future<List<DepartmentDto>> build() {
    return getDepartments();
  }

  Future<List<DepartmentDto>> getDepartments() async {
    final mediator = ref.read(mediatorProvider);
    state = AsyncLoading();
    final res = await mediator.query(GetDepartmentsQuery());
    return res.when(
      success: (List<DepartmentDto> data) {
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

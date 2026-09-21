import 'package:enterprise_management/application/use_cases/projects/get_project/get_project_query.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_project_details_controller.g.dart';
@Riverpod()
class GetProjectDetailsController extends _$GetProjectDetailsController {
  @override
  Future<Project?> build() async {
    return null;
  }

  Future<void> getProjectDetails({required String id}) async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetProjectQuery(id: id));
    res.when(success: (project) {
      state = AsyncData(project);
    }, failure: (error) {
      state = AsyncError(error, StackTrace.current);
    });
  }
}
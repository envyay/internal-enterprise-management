import 'package:enterprise_management/application/use_cases/projects/delete_project/delete_project_command.dart';
import 'package:enterprise_management/application/use_cases/projects/get_projects/get_projects_query.dart';
import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'projects_controller.g.dart';

@Riverpod()
class ProjectsController extends _$ProjectsController {
  @override
  Future<List<Project>> build() {
    return getProjects();
  }

  Future<List<Project>> getProjects() async {
    final mediator = ref.read(mediatorProvider);
    final res = await mediator.query(GetProjectsQuery());
    return res.when(
      success: (List<Project> data) {
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
    final data = await getProjects();
    state = AsyncValue.data(data);
  }

  Future<void> delete(String id) async {
    final mediator = ref.read(mediatorProvider);
    await mediator.send(DeleteProjectCommand(id: id));
    refresh();
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
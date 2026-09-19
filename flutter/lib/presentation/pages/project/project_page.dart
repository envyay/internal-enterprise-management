import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/projects_controller.dart';
import 'package:enterprise_management/presentation/pages/project/widgets/create_project_dialog.dart';
import 'package:enterprise_management/presentation/pages/project/widgets/project_item.dart';
import 'package:enterprise_management/presentation/widgets/base_page.dart';
import 'package:enterprise_management/presentation/widgets/overview_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';

@RoutePage()
class ProjectPage extends ConsumerWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(projectsControllerProvider.notifier);
    final state = ref.watch(projectsControllerProvider);
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: BasePage(
        title: 'Project Management',
        description:
            'You can manage project',
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: OverviewContainer(
                    title: 'Projects',
                    icon: Assets.lib.infrastructure.assets.icons.create,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Consumer(
                            builder: (context, ref, child) {
                              return CreateProjectDialog();
                            },
                          );
                        },
                      );
                    },
                     child: state.when(
                      data: (projects) {
                        return ListView.builder(
                          itemCount: projects.length,
                          itemBuilder: (context, index) {
                            final item = projects[index];
                            return ProjectItem(
                              name: item.name,
                              isActive: item.isActive,
                              onTap: () {
                                controller.onSelect(item.id);
                              }, project: item,
                            );
                          },
                        );
                      },
                      error: (error, stackTrace) {
                        return const Text('Error');
                      },
                      loading: () {
                        return const Text('Loading...');
                      },
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: OverviewContainer(
                    title: 'Role-Based Access Control (RBAC)',
                    child: Column(children: [Text('data')]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

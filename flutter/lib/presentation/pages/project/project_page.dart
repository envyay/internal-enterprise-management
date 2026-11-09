import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/pages/department/widgets/add_users_dialog.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/get_project_details_controller.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/projects_controller.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/ticket_statuses_in_project_controller.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/users_in_project_controller.dart';
import 'package:enterprise_management/presentation/pages/project/widgets/create_project_dialog.dart';
import 'package:enterprise_management/presentation/pages/project/widgets/create_ticket_status_dialog.dart';
import 'package:enterprise_management/presentation/pages/project/widgets/project_item.dart';
import 'package:enterprise_management/presentation/pages/project/widgets/ticket_status_item.dart';
import 'package:enterprise_management/presentation/pages/project/widgets/users_in_project.dart';
import 'package:enterprise_management/presentation/widgets/base_page.dart';
import 'package:enterprise_management/presentation/widgets/overview_container.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../controllers/policies_controller.dart';

@RoutePage()
class ProjectPage extends ConsumerWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectController = ref.watch(projectsControllerProvider.notifier);
    final projects = ref.watch(projectsControllerProvider);
    final projectDetails = ref.watch(getProjectDetailsControllerProvider);
    final ticketStatusesInProject = ref.watch(
      ticketStatusesInProjectControllerProvider,
    );

    final policies = ref.watch(
      policiesControllerProvider.select((x) => x.value ?? []),
    );

    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: BasePage(
        title: 'Project Management',
        description: 'You can manage project',
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 8,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: OverviewContainer(
                    title: 'Projects',
                    icon: policies.contains(AppPolicy.createProject)
                        ? Assets.lib.infrastructure.assets.icons.create
                        : null,
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
                    child: projects.when(
                      data: (projects) {
                        return ListView.builder(
                          itemCount: projects.length,
                          itemBuilder: (context, index) {
                            final item = projects[index];
                            return ProjectItem(
                              name: item.name,
                              isActive: item.isActive,
                              onTap: () {
                                projectController.onSelect(item.id);
                              },
                              project: item,
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
                if (policies.contains(AppPolicy.getByIdProject))
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: OverviewContainer(
                      title: 'Project Details',
                      child: Container(
                        padding: .symmetric(vertical: 8, horizontal: 16),
                        alignment: .topStart,
                        width: .infinity,
                        child: projectDetails.when(
                          data: (project) {
                            return Column(
                              crossAxisAlignment: .start,
                              children: [
                                Text('Project Name: ${project?.name ?? ''}'),
                                Text(
                                  'Description: ${project?.description ?? ''}',
                                ),
                                Text('Code: ${project?.code ?? ''}'),
                                Text('Status: ${project?.status ?? ''}'),
                                Text('Start Date: ${project?.startDate ?? ''}'),
                                Text('End Date: ${project?.endDate ?? ''}'),
                                Text('Members: ${project?.users.length ?? ''}'),
                                Text(
                                  'Number Of Ticket Statuses: ${project?.ticketStatuses.length ?? ''}',
                                ),
                              ],
                            );
                          },
                          error: ((error, stackTrace) => const Text('Error')),
                          loading: () {
                            return const Text('Loading...');
                          },
                        ),
                      ),
                    ),
                  ),

                if (policies.contains(AppPolicy.getTicketStatusesByProjectId))
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: OverviewContainer(
                      title: 'Ticket Status',
                      icon: policies.contains(AppPolicy.createTicketStatus)
                          ? Assets.lib.infrastructure.assets.icons.create
                          : null,
                      onTap: () {
                        final projectId = projectController
                            .getSelectedProjectId();
                        if (projectId == null) return;
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CreateTicketStatusDialog(
                              projectId: projectId,
                            );
                          },
                        );
                      },
                      child: ticketStatusesInProject.when(
                        data: (ticketStatuses) {
                          return ListView.builder(
                            itemCount: ticketStatuses.length,
                            itemBuilder: (context, index) {
                              final item = ticketStatuses[index];
                              return TicketStatusItem(
                                ticketStatus: item,
                                name: item.name,
                              );
                            },
                          );
                        },
                        error: ((error, stackTrace) => const Text('Error')),
                        loading: () {
                          return const Text('Loading...');
                        },
                      ),
                    ),
                  ),

                if (policies.contains(AppPolicy.getUsersByProjectId))
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 2,
                    child: OverviewContainer(
                      title: 'Users In Project',
                      icon: policies.contains(AppPolicy.setUsersInProject)
                          ? Assets.lib.infrastructure.assets.icons.create
                          : null,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Consumer(
                              builder: (context, ref, child) {
                                final state = ref.watch(
                                  usersInProjectControllerProvider,
                                );
                                final controller = ref.watch(
                                  usersInProjectControllerProvider.notifier,
                                );
                                final project = state.value;
                                return AddUsersDialog(
                                  initialSelectedUserIds:
                                      project?.users
                                          .map((item) => item.id)
                                          .toSet() ??
                                      {},
                                  onSave: (users) {
                                    if (project == null) return;
                                    controller.setUsersInProject(
                                      id: project.id,
                                      userIds: users
                                          .map((item) => item.id)
                                          .toList(),
                                    );
                                  },
                                );
                              },
                            );
                          },
                        );
                      },
                      child: UsersInProject(),
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

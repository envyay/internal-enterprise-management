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

  Widget _buildStatusBadge(int status) {
    final (label, textColor, bgColor) = switch (status) {
      0 => ('InActive', const Color(0xFF43474F), const Color(0xFFE2E2E9)),
      1 => ('Active', const Color(0xFF006C49), const Color(0xFFD6F5E3)),
      2 => ('Completed', const Color(0xFF0061A4), const Color(0xFFD2E4FF)),
      3 => ('OnHold', const Color(0xFF8B5000), const Color(0xFFFFDDB8)),
      4 => ('Cancelled', const Color(0xFFBA1A1A), const Color(0xFFFFDAD6)),
      _ => ('Unknown', const Color(0xFF74777F), const Color(0xFFF1F2F6)),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }

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
                        if (projects.isEmpty) {
                          return const Center(
                            child: Padding(
                              padding: EdgeInsets.all(24.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.folder_open_outlined, size: 36, color: Color(0xFFC3C6D1)),
                                  SizedBox(height: 8),
                                  Text(
                                    'No projects found',
                                    style: TextStyle(color: Color(0xFF74777F), fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                        return ListView.separated(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          itemCount: projects.length,
                          separatorBuilder: (context, index) => const SizedBox(height: 6),
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
                      error: (error, stackTrace) => const Center(
                        child: Text('Error loading projects', style: TextStyle(color: Color(0xFFBA1A1A))),
                      ),
                      loading: () => const Center(child: CircularProgressIndicator()),
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
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        child: projectDetails.when(
                          data: (project) {
                            if (project == null) {
                              return const Center(
                                child: Padding(
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.folder_open_outlined, size: 36, color: Color(0xFFC3C6D1)),
                                      SizedBox(height: 8),
                                      Text(
                                        'Select a project to view details',
                                        style: TextStyle(color: Color(0xFF74777F), fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }

                            String formatDate(DateTime? date) {
                              if (date == null) return 'Not set';
                              final d = date.day.toString().padLeft(2, '0');
                              final m = date.month.toString().padLeft(2, '0');
                              final y = date.year.toString();
                              return '$d/$m/$y';
                            }

                            return SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Code & Status Header
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF0F4FD),
                                          borderRadius: BorderRadius.circular(6),
                                          border: Border.all(color: const Color(0xFFC7D5E8)),
                                        ),
                                        child: Text(
                                          project.code.isNotEmpty ? project.code : 'N/A',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF001E40),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      _buildStatusBadge(project.status),
                                    ],
                                  ),
                                  const SizedBox(height: 12),

                                  // Name
                                  Text(
                                    project.name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF0B1C30),
                                    ),
                                  ),
                                  if (project.description.isNotEmpty) ...[
                                    const SizedBox(height: 6),
                                    Text(
                                      project.description,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF43474F),
                                        height: 1.4,
                                      ),
                                    ),
                                  ],
                                  const SizedBox(height: 14),
                                  const Divider(height: 1, color: Color(0xFFE0E2EC)),
                                  const SizedBox(height: 12),

                                  // Timeline
                                  const Text(
                                    'Timeline',
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF74777F),
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF8F9FD),
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: const Color(0xFFE0E2EC)),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Start Date',
                                                style: TextStyle(fontSize: 10, color: Color(0xFF74777F)),
                                              ),
                                              const SizedBox(height: 2),
                                              Text(
                                                formatDate(project.startDate),
                                                style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF191C20),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF8F9FD),
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: const Color(0xFFE0E2EC)),
                                          ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'End Date',
                                                style: TextStyle(fontSize: 10, color: Color(0xFF74777F)),
                                              ),
                                              const SizedBox(height: 2),
                                              Text(
                                                formatDate(project.endDate),
                                                style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFF191C20),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 14),

                                  // Summary Statistics
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF8F9FD),
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: const Color(0xFFE0E2EC)),
                                          ),
                                          child: Row(
                                            children: [
                                              const Icon(Icons.people_outline, size: 18, color: Color(0xFF001E40)),
                                              const SizedBox(width: 8),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Members',
                                                    style: TextStyle(fontSize: 10, color: Color(0xFF74777F)),
                                                  ),
                                                  Text(
                                                    '${project.users.length}',
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w700,
                                                      color: Color(0xFF001E40),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF8F9FD),
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: const Color(0xFFE0E2EC)),
                                          ),
                                          child: Row(
                                            children: [
                                              const Icon(Icons.view_kanban_outlined, size: 18, color: Color(0xFF001E40)),
                                              const SizedBox(width: 8),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Ticket Statuses',
                                                    style: TextStyle(fontSize: 10, color: Color(0xFF74777F)),
                                                  ),
                                                  Text(
                                                    '${project.ticketStatuses.length}',
                                                    style: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w700,
                                                      color: Color(0xFF001E40),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                          error: ((error, stackTrace) => const Center(child: Text('Error'))),
                          loading: () {
                            return const Center(child: CircularProgressIndicator());
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

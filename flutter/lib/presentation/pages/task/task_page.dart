import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/projects_controller.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/ticket_statuses_in_project_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/ticket_statuses_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../infrastructure/assets/gen/assets.gen.dart';
import '../../widgets/base_page.dart';
import '../../widgets/overview_container.dart';

@RoutePage()
class ProjectTrackerPage extends ConsumerWidget {
  const ProjectTrackerPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(projectsControllerProvider.notifier);
    final state = ref.watch(projectsControllerProvider);
    final ticketStatusState = ref.watch(ticketStatusesControllerProvider);
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: BasePage(
        dropDown: state.when(
          data: (projects) => DropdownButtonFormField<String>(
            items: projects
                .map((p) => DropdownMenuItem(value: p.id, child: Text(p.name)))
                .toList(),
            onChanged: (projectId) {
              final ticketStatusesController = ref.watch(
                ticketStatusesControllerProvider.notifier,
              );
              ticketStatusesController.getTicketStatusesByProjectId(
                projectId: projectId ?? '',
              );
            },
          ),
          error: (error, stackTrace) => const Text('Error'),
          loading: () => const CircularProgressIndicator(),
        ),
        title: 'Project Alpha Tracker',
        description: 'Manage Q3 deliverables and milestones.',
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            scrollDirection: .horizontal,
            child: ticketStatusState.when(
              data: (ticketStatuses) {
                return StaggeredGrid.count(
                  crossAxisCount: 8,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: ticketStatuses.map((status) {
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 8,
                      mainAxisCellCount: 4,
                      child: OverviewContainer(
                        title: status.name,
                        child: Column(
                          children: [
                            Container(
                              padding: .symmetric(horizontal: 12, vertical: 12),
                              child: Container(
                                padding: .symmetric(
                                  horizontal: 12,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC3C6D1),
                                    width: 1,
                                  ),
                                  borderRadius: .circular(4),
                                ),
                                child: Column(
                                  crossAxisAlignment: .start,
                                  spacing: 4,
                                  children: [
                                    Container(
                                      padding: .symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xff003366),
                                        borderRadius: .circular(2),
                                      ),
                                      child: Text(
                                        'DEVELOPMENT',
                                        style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 10,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Implement OAuth2 Flow',
                                      style: TextStyle(
                                        color: Color(0xff0B1C30),
                                        fontWeight: .w500,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      'Set up authentication endpoints and integrate with Azure AD for single sign-on.',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontSize: 12,
                                        fontWeight: .w400,
                                      ),
                                    ),
                                    Container(
                                      margin: .only(top: 12),
                                      padding: .symmetric(vertical: 8),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          top: BorderSide(
                                            width: 1,
                                            color: Color(0xffE5EEFF),
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Assets
                                                  .lib
                                                  .infrastructure
                                                  .assets
                                                  .icons
                                                  .lightBulb
                                                  .svg(),
                                            ],
                                          ),
                                          Row(
                                            spacing: 12,
                                            children: [
                                              Assets
                                                  .lib
                                                  .infrastructure
                                                  .assets
                                                  .icons
                                                  .message
                                                  .svg(),
                                              Assets
                                                  .lib
                                                  .infrastructure
                                                  .assets
                                                  .icons
                                                  .attachment
                                                  .svg(),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList()
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
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final int index;

  const DashboardTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(
          'Tile $index',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}

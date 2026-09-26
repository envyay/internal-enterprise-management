import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/projects_controller.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/ticket_statuses_in_project_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/ticket_statuses_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/tickets_in_ticket_status_controller.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/ticket_card.dart';
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
                    final ticketsState = ref.watch(
                      ticketsInTicketStatusControllerProvider(status.id),
                    );
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 8,
                      mainAxisCellCount: 4,
                      child: OverviewContainer(
                        title: status.name,
                        child: ticketsState.when(
                          data: (tickets) {
                            return ListView.builder(
                              itemCount: tickets.length,
                              itemBuilder: (context, index) {
                                final ticket = tickets[index];
                                return TicketCard(ticket: ticket);
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
                    );
                  }).toList(),
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

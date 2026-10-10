import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/projects_controller.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/ticket_statuses_in_project_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/ticket_statuses_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/tickets_in_ticket_status_controller.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/edit_ticket_drawer.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/ticket_card.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/create_ticket_drawer.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/ticket_details_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../infrastructure/assets/gen/assets.gen.dart';
import '../../widgets/base_page.dart';
import '../../widgets/overview_container.dart';

@RoutePage()
class ProjectTrackerPage extends ConsumerWidget {
  const ProjectTrackerPage({super.key});

  void _createTicketDrawer(BuildContext context, TicketStatus ticketStatus, String projectId) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      barrierColor: Colors.black26,
      transitionDuration: const Duration(milliseconds: 250),
      pageBuilder: (_, __, ___) => Align(
        alignment: Alignment.centerRight,
        child: Material(
          child: CreateTicketDrawer(ticketStatus: ticketStatus, projectId: projectId),
        ),
      ),
      transitionBuilder: (_, animation, __, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
          child: child,
        );
      },
    );
  }

  void _editTicketDrawer(BuildContext context, TicketStatus ticketStatus, String projectId, Ticket ticket) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      barrierColor: Colors.black26,
      transitionDuration: const Duration(milliseconds: 250),
      pageBuilder: (_, __, ___) => Align(
        alignment: Alignment.centerRight,
        child: Material(
          child: EditTicketDrawer(ticketStatus: ticketStatus, projectId: projectId, ticket: ticket,),
        ),
      ),
      transitionBuilder: (_, animation, __, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
          child: child,
        );
      },
    );
  }

  void _ticketDetailsDrawer(BuildContext context, TicketStatus ticketStatus, String projectId, Ticket ticket) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      barrierColor: Colors.black26,
      transitionDuration: const Duration(milliseconds: 250),
      pageBuilder: (_, __, ___) => Align(
        alignment: Alignment.centerRight,
        child: Material(
          child: TicketDetailsDrawer(ticketStatus: ticketStatus, projectId: projectId, ticket: ticket,),
        ),
      ),
      transitionBuilder: (_, animation, __, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: animation, curve: Curves.easeOut)),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(projectsControllerProvider.notifier);
    final state = ref.watch(projectsControllerProvider);
    final ticketStatusState = ref.watch(ticketStatusesControllerProvider);

    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: Builder(
        builder: (scaffoldContext) => BasePage(
          dropDown: state.when(
            data: (projects) => DropdownButtonFormField<String>(
              items: projects
                  .map(
                    (p) => DropdownMenuItem(value: p.id, child: Text(p.name)),
                  )
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
              scrollDirection: Axis.horizontal,
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
                          icon: Assets.lib.infrastructure.assets.icons.create,
                          onTap: () {
                            _createTicketDrawer(scaffoldContext, status, status.projectId);
                          },
                          child: DragTarget<({Ticket ticket, String fromStatusId})>(
                            // Chỉ nhận ticket đến từ cột khác
                            onWillAcceptWithDetails: (details) => details.data.fromStatusId != status.id,
                            onAcceptWithDetails: (details) {
                              final data = details.data;
                              ref
                                  .read(ticketsInTicketStatusControllerProvider(data.fromStatusId).notifier)
                                  .updateTicketByTicketStatus(data.ticket.id, status.id);
                            },
                            builder: (context, candidateData, rejectedData) {
                              final isHovering = candidateData.isNotEmpty;
                              return Container(
                                // Tô sáng cột khi đang kéo ticket ngang qua
                                decoration: BoxDecoration(
                                  color: isHovering ? Colors.blue.withOpacity(0.08) : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: ticketsState.when(
                                  data: (tickets) => ListView.builder(
                                    itemCount: tickets.length,
                                    itemBuilder: (context, index) {
                                      final ticket = tickets[index];
                                      final card = TicketCard(
                                        ticket: ticket,
                                        onPressed: () => _editTicketDrawer(scaffoldContext, status, status.projectId, ticket),
                                        onTap: () => _ticketDetailsDrawer(scaffoldContext, status, status.projectId, ticket),
                                      );
                                      return Draggable<({Ticket ticket, String fromStatusId})>(
                                        data: (ticket: ticket, fromStatusId: status.id),
                                        // Hình hiển thị dưới con trỏ khi kéo
                                        feedback: Material(
                                          elevation: 6,
                                          borderRadius: BorderRadius.circular(8),
                                          child: SizedBox(width: 280, child: card),
                                        ),
                                        // Chỗ cũ của ticket mờ đi trong lúc kéo
                                        childWhenDragging: Opacity(opacity: 0.3, child: card),
                                        child: card,
                                      );
                                    },
                                  ),
                                  error: (e, st) => const Text('Error'),
                                  loading: () => const Text('Loading...'),
                                ),
                              );
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

import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/presentation/controllers/policies_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/ticket_statuses_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/tickets_in_ticket_status_controller.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/create_ticket_drawer.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/edit_ticket_drawer.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/ticket_card.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/ticket_details_drawer.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../infrastructure/assets/gen/assets.gen.dart';
import '../../widgets/base_page.dart';
import '../../widgets/overview_container.dart';
import 'controllers/projects_controller.dart';

@RoutePage()
class ProjectTrackerPage extends ConsumerStatefulWidget {
  const ProjectTrackerPage({super.key});

  @override
  ConsumerState<ProjectTrackerPage> createState() => _ProjectTrackerPageState();
}

class _ProjectTrackerPageState extends ConsumerState<ProjectTrackerPage> {
  String? _selectedProjectId;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final projects = ref.read(projectsControllerProvider).value ?? [];
      if (_selectedProjectId == null && projects.isNotEmpty) {
        final firstId = projects.first.id;
        setState(() {
          _selectedProjectId = firstId;
        });
        ref
            .read(ticketStatusesControllerProvider.notifier)
            .getTicketStatusesByProjectId(projectId: firstId);
      }
    });
  }

  void _createTicketDrawer(BuildContext context, TicketStatus ticketStatus, String projectId) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      barrierColor: Colors.black26,
      transitionDuration: const Duration(milliseconds: 250),
      pageBuilder: (_, _, _) => Align(
        alignment: Alignment.centerRight,
        child: Material(
          child: CreateTicketDrawer(ticketStatus: ticketStatus, projectId: projectId),
        ),
      ),
      transitionBuilder: (_, animation, _, child) {
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
      pageBuilder: (_, _, _) => Align(
        alignment: Alignment.centerRight,
        child: Material(
          child: EditTicketDrawer(ticketStatus: ticketStatus, projectId: projectId, ticket: ticket,),
        ),
      ),
      transitionBuilder: (_, animation, _, child) {
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
      pageBuilder: (_, _, _) => Align(
        alignment: Alignment.centerRight,
        child: Material(
          child: TicketDetailsDrawer(ticketStatus: ticketStatus, projectId: projectId, ticket: ticket,),
        ),
      ),
      transitionBuilder: (_, animation, _, child) {
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
  Widget build(BuildContext context) {
    final state = ref.watch(projectsControllerProvider);
    final ticketStatusState = ref.watch(ticketStatusesControllerProvider);

    final policies = ref.watch(policiesControllerProvider.select((x) => x.value ?? []));

    ref.listen(projectsControllerProvider, (previous, next) {
      final projects = next.value ?? [];
      if (_selectedProjectId == null && projects.isNotEmpty) {
        final firstId = projects.first.id;
        setState(() {
          _selectedProjectId = firstId;
        });
        ref
            .read(ticketStatusesControllerProvider.notifier)
            .getTicketStatusesByProjectId(projectId: firstId);
      }
    });

    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: Builder(
        builder: (scaffoldContext) => BasePage(
          subHeader: state.when(
            data: (projects) {
              if (projects.isEmpty) return const SizedBox();
              final currentSelectedId =
                  _selectedProjectId ?? projects.first.id;
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: projects.map((p) {
                    final isSelected = p.id == currentSelectedId;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChoiceChip(
                        label: Text(p.name),
                        selected: isSelected,
                        onSelected: (selected) {
                          if (p.id != _selectedProjectId) {
                            setState(() {
                              _selectedProjectId = p.id;
                            });
                            ref
                                .read(ticketStatusesControllerProvider.notifier)
                                .getTicketStatusesByProjectId(
                                  projectId: p.id,
                                );
                          }
                        },
                        showCheckmark: false,
                        selectedColor: const Color(0xFF001E40),
                        backgroundColor: Colors.white,
                        labelStyle: TextStyle(
                          color: isSelected
                              ? Colors.white
                              : const Color(0xFF43474F),
                          fontSize: 13,
                          fontWeight: isSelected
                              ? FontWeight.w600
                              : FontWeight.w500,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            color: isSelected
                                ? const Color(0xFF001E40)
                                : const Color(0xFFC3C6D1),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              );
            },
            error: (error, stackTrace) => const Text('Error loading projects'),
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
                          icon: policies.contains(AppPolicy.createTicket) ? Assets.lib.infrastructure.assets.icons.create : null,
                          onTap: () {
                            _createTicketDrawer(scaffoldContext, status, status.projectId);
                          },
                          child: DragTarget<({Ticket ticket, String fromStatusId})>(

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

                                decoration: BoxDecoration(
                                  color: isHovering ? Colors.blue.withValues(alpha: 0.08) : Colors.transparent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: policies.contains(AppPolicy.getTicketsByTicketStatusId) ? ticketsState.when(
                                  data: (tickets) => ListView.builder(
                                    itemCount: tickets.length,
                                    itemBuilder: (context, index) {
                                      final ticket = tickets[index];
                                      final card = TicketCard(
                                        ticket: ticket,
                                        onPressed: policies.contains(AppPolicy.updateTicket) ? () => _editTicketDrawer(scaffoldContext, status, status.projectId, ticket) : null,
                                        onTap: policies.contains(AppPolicy.getByIdTicket) ? () => _ticketDetailsDrawer(scaffoldContext, status, status.projectId, ticket) : null,
                                      );
                                      return Draggable<({Ticket ticket, String fromStatusId})>(
                                        data: (ticket: ticket, fromStatusId: status.id),

                                        feedback: Material(
                                          elevation: 6,
                                          borderRadius: BorderRadius.circular(8),
                                          child: SizedBox(width: 280, child: card),
                                        ),

                                        childWhenDragging: Opacity(opacity: 0.3, child: card),
                                        child: card,
                                      );
                                    },
                                  ),
                                  error: (e, st) => const Text('Error'),
                                  loading: () => const Text('Loading...'),
                                ) : null,
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

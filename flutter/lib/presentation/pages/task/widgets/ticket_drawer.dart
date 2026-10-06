import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/users_in_project_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/create_ticket_form_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/tickets_in_ticket_status_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/users_in_project_task_controller.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/assign_users_dialog.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TicketDrawer extends ConsumerWidget {
  const TicketDrawer({super.key, required this.ticketStatus, required this.projectId});

  final TicketStatus ticketStatus;
  final String projectId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketsInTicketStatusController = ref.watch(
      ticketsInTicketStatusControllerProvider(ticketStatus.id).notifier,
    );
    final usersInProjectController = ref.watch(
      usersInProjectControllerProvider.notifier,
    );
    final form = ref.watch(createTicketFormControllerProvider(null).notifier);
    final state = ref.watch(createTicketFormControllerProvider(null));
    final titleError = state.title.error?.errorMessage;
    final descriptionError = state.description.error?.errorMessage;
    return Drawer(
      width: 500,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 55,
            color: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Create Ticket Form',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Column(
            children: [
              TextField(
                onChanged: (value) {
                  form.setTitle(value);
                },
                decoration: InputDecoration(
                  label: Text('Title'),
                  errorText: titleError,
                ),
              ),
              TextField(
                onChanged: (value) {
                  form.setDescription(value);
                },
                decoration: InputDecoration(
                  label: Text('Description'),
                  errorText: descriptionError,
                ),
              ),
              TextField(
                onChanged: (value) {
                  // form.setCode(value);
                },
                decoration: InputDecoration(
                  label: Text('Attachment'),
                  // errorText: errorCode,
                ),
              ),
              SolidButton(
                title: 'Assign User',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Consumer(builder: (context, ref, child) {
                        // final projectState = ref.watch(usersInProjectTaskControllerProvider);
                        final controller = ref.watch(usersInProjectTaskControllerProvider(projectId).notifier);
                        // final project = projectState.value;
                        return AssignUsersDialog(projectId: projectId, onSave: (users) {
                          form.setUsers(users);
                          // if (project == null) return;
                          // final ticket = ticketStatus.tickets?.firstOrNull;
                          // controller.setUsersInTicket(ticketId: ticket?.id ?? "", userIds: users.map((item) => item.id).toList());
                        },);
                      });
                    },
                  );
                },
              ),

              Container(height: 250, color: Colors.blue),
              SolidButton(
                title: 'Create',
                onTap: () async {
                  await form.submit(ticketStatus.id);
                  ticketsInTicketStatusController.refresh(ticketStatus.id);
                },
              ),
              // Expanded(child: child)
            ],
          ),
        ],
      ),
    );
  }
}

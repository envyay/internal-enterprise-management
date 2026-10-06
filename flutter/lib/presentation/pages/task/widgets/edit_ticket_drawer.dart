import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/create_ticket_form_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/tickets_in_ticket_status_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/users_in_ticket_controller.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/assign_users_dialog.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/comments_in_ticket.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/users_in_ticket.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditTicketDrawer extends ConsumerWidget {
  const EditTicketDrawer({
    super.key,
    required this.ticketStatus,
    required this.projectId,
    required this.ticket,
  });

  final TicketStatus ticketStatus;
  final String projectId;
  final Ticket ticket;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(appRouterProvider);
    final ticketsInTicketStatusController = ref.watch(
      ticketsInTicketStatusControllerProvider(ticketStatus.id).notifier,
    );
    final form = ref.watch(createTicketFormControllerProvider(ticket).notifier);
    final state = ref.watch(createTicketFormControllerProvider(ticket));
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
              'Edit Ticket Form',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Column(
            children: [
              TextFormField(
                initialValue: state.title.value,
                onChanged: (value) {
                  form.setTitle(value);
                },
                decoration: InputDecoration(
                  label: const Text('Name'),
                  errorText: titleError,
                ),
              ),
              TextFormField(
                initialValue: state.description.value,
                onChanged: (value) {
                  form.setDescription(value);
                },
                decoration: InputDecoration(
                  label: const Text('Description'),
                  errorText: descriptionError,
                ),
              ),
              SolidButton(
                title: 'Assign User',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Consumer(
                        builder: (context, ref, child) {
                          final controller = ref.watch(
                            usersInTicketControllerProvider(ticket.id).notifier,
                          );

                          final state = ref.watch(
                            usersInTicketControllerProvider(ticket.id),
                          );
                          final users = state.value ?? [];
                          return AssignUsersDialog(
                            initialSelectedUserIds: users
                                .map((item) => item.id)
                                .toSet(),
                            projectId: projectId,
                            onSave: (users) {
                              form.setUsers(users);
                              controller.setUsersInTicket(
                                ticketId: ticket.id,
                                userIds: users.map((item) => item.id).toList(),
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),

              UsersInTicket(ticket: ticket),
              SolidButton(
                title: 'Save',
                onTap: () async {
                  await form.edit(ticketStatus.id);
                  ticketsInTicketStatusController.refresh(ticketStatus.id);
                },
              ),
              SolidButton(
                title: 'Delete',
                onTap: () async {
                  await ticketsInTicketStatusController.delete(ticket.id);
                  router.pop();
                },
              ),
              Container(
                alignment: .topLeft,
                width: .infinity,
                child: Text('Comment'),
              ),
              // Expanded(
              //   child:
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

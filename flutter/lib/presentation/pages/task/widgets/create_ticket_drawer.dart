import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/create_ticket_form_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/documents_in_ticket_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/ticket_attachment_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/tickets_in_ticket_status_controller.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/assign_users_dialog.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/document_table_in_ticket.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateTicketDrawer extends ConsumerWidget {
  const CreateTicketDrawer({
    super.key,
    required this.ticketStatus,
    required this.projectId,
  });

  final TicketStatus ticketStatus;
  final String projectId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketAttachmentState = ref.watch(
      ticketAttachmentControllerProvider(),
    );
    final ticketAttachmentController = ref.watch(
      ticketAttachmentControllerProvider().notifier,
    );

    final ticketsInTicketStatusController = ref.watch(
      ticketsInTicketStatusControllerProvider(ticketStatus.id).notifier,
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
            spacing: 12,
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
              Container(alignment: .topLeft, child: Text('Attachment')),
              DocumentTableInTicket(state: ticketAttachmentState),
              SolidButton(
                title: 'Upload Attachment',
                onTap: () {
                  ticketAttachmentController.pickAttachment();
                },
              ),
              SolidButton(
                title: 'Assign User',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Consumer(
                        builder: (context, ref, child) {
                          return AssignUsersDialog(
                            projectId: projectId,
                            onSave: (users) {
                              form.setUsers(users);
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),

              Container(height: 250, color: Colors.blue),
              SolidButton(
                title: 'Create',
                onTap: () async {
                  final ticketId = await form.submit(ticketStatus.id);
                  if (ticketId == null) return;
                  final files = ticketAttachmentState.value;
                  if (files == null) return;
                  final documentsInTicketController = ref.watch(
                    documentsInTicketControllerProvider().notifier,
                  );
                  documentsInTicketController.uploadDocument(
                    referenceId: ticketId,
                    files: files,
                  );

                  ticketsInTicketStatusController.refresh(ticketStatus.id);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

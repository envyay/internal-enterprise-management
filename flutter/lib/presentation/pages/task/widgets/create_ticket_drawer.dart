import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/controllers/policies_controller.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/create_ticket_form_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/documents_in_ticket_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/ticket_attachment_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/tickets_in_ticket_status_controller.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/assign_users_dialog.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/document_table_in_ticket.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
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

  Widget _buildIconButton({
    required String tooltip,
    SvgGenImage? icon,
    required VoidCallback onTap,
    double? iconSize
  }) {
    return IconButton(
      tooltip: tooltip,
      onPressed: onTap,
      visualDensity: VisualDensity.compact,
      padding: const EdgeInsets.all(6),
      constraints: const BoxConstraints(minWidth: 32, minHeight: 32),
      style: IconButton.styleFrom(
        hoverColor: const Color(0xFFF0F4FF),
        highlightColor: const Color(0xFFD6E4FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      icon: icon?.svg(
        width: iconSize ?? 16,
        height: iconSize ?? 16,
        colorFilter: const ColorFilter.mode(
          Color(0xff001E40),
          BlendMode.srcIn,
        ),
      ) ?? Container(),
    );
  }

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

    final policies = ref.watch(policiesControllerProvider.select((x) => x.value ?? []));

    return Container(
      width: 500,
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(left: BorderSide(color: Color(0xffC3C6D1), width: 1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(-3, 0),
          ),
        ],
      ),
      child: Column(
        children: [
          // Header (Navy Blue - Design System)
          Container(
            height: 64,
            decoration: const BoxDecoration(color: Color(0xff001E40)),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Assets.lib.infrastructure.assets.icons.create.svg(
                      width: 18,
                      height: 18,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Create Ticket',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.white, size: 20),
                  onPressed: () => Navigator.of(context).maybePop(),
                  tooltip: 'Close',
                ),
              ],
            ),
          ),

          // Drawer Form Content
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                // Status Badge
                Row(
                  children: [
                    const Text(
                      'Target Column:',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff43474F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F4FF),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: const Color(0xFFD6E4FF)),
                      ),
                      child: Text(
                        ticketStatus.name,
                        style: const TextStyle(
                          color: Color(0xFF001E40),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Title Input
                TextFormField(
                  onChanged: (value) => form.setTitle(value),
                  decoration: InputDecoration(
                    labelText: 'Ticket Title *',
                    labelStyle: const TextStyle(
                      color: Color(0xFF43474F),
                      fontSize: 14,
                    ),
                    hintText: 'e.g. Implement authentication flow',
                    hintStyle: const TextStyle(
                      color: Color(0xFF74777F),
                      fontSize: 13,
                    ),
                    errorText: titleError,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Color(0xFF001E40),
                        width: 1.5,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Description Input
                TextFormField(
                  maxLines: 4,
                  minLines: 2,
                  onChanged: (value) => form.setDescription(value),
                  decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: const TextStyle(
                      color: Color(0xFF43474F),
                      fontSize: 14,
                    ),
                    hintText: 'Add details or requirements for this ticket...',
                    hintStyle: const TextStyle(
                      color: Color(0xFF74777F),
                      fontSize: 13,
                    ),
                    errorText: descriptionError,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(
                        color: Color(0xFF001E40),
                        width: 1.5,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(color: Color(0xffC3C6D1), height: 1),
                const SizedBox(height: 16),

                // Assignees Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Assignees',
                      style: TextStyle(
                        color: Color(0xff0B1C30),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    _buildIconButton(
                      tooltip: 'Assign User',
                      icon: policies.contains(AppPolicy.setUsersInTicket) ? Assets.lib.infrastructure.assets.icons.create : null,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Consumer(
                              builder: (context, ref, child) {
                                return AssignUsersDialog(
                                  projectId: projectId,
                                  initialSelectedUserIds: state.users
                                      .map((u) => u.id)
                                      .toSet(),
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
                  ],
                ),
                const SizedBox(height: 10),
                if (state.users.isNotEmpty)
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: state.users.map((user) {
                      final name = user.fullName;
                      final parts = name.trim().split(' ');
                      final initials = parts.length >= 2
                          ? '${parts.first[0]}${parts.last[0]}'.toUpperCase()
                          : (name.isNotEmpty ? name[0].toUpperCase() : '');
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0F4FF),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: const Color(0xFFD6E4FF)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: const Color(0xFF001E40),
                              child: Text(
                                initials,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              name,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF0B1C30),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  )
                else
                  const Text(
                    'No users assigned yet.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF74777F),
                    ),
                  ),

                const SizedBox(height: 20),
                const Divider(color: Color(0xffC3C6D1), height: 1),
                const SizedBox(height: 16),

                // Attachments Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Attachments',
                      style: TextStyle(
                        color: Color(0xff0B1C30),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    _buildIconButton(
                      tooltip: 'Upload File',
                      icon: policies.contains(AppPolicy.uploadDocument) ? Assets.lib.infrastructure.assets.icons.uploadFile : null,
                      iconSize: 20,
                      onTap: () {
                        ticketAttachmentController.pickAttachment();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                DocumentTableInTicket(state: ticketAttachmentState),
              ],
            ),
          ),

          // Pinned Bottom Button Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Color(0xffC3C6D1), width: 1),
              ),
            ),
            child: SolidButton(
              title: 'Create Ticket',
              prefix: Assets.lib.infrastructure.assets.icons.plus,
              onTap: () async {
                final ticketId = await form.submit(ticketStatus.id);
                if (ticketId == null) return;
                final files = ticketAttachmentState.value;
                if (files != null && files.isNotEmpty) {
                  final documentsInTicketController = ref.watch(
                    documentsInTicketControllerProvider().notifier,
                  );
                  documentsInTicketController.uploadDocument(
                    referenceId: ticketId,
                    files: files,
                  );
                }
                ticketsInTicketStatusController.refresh(ticketStatus.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}

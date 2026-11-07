import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/comments_in_ticket_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/create_comment_form_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/create_ticket_form_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/documents_in_ticket_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/ticket_attachment_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/tickets_in_ticket_status_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/users_in_ticket_controller.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/assign_users_dialog.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/comments_in_ticket.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/document_table_in_ticket.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/users_in_ticket.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditTicketDrawer extends ConsumerStatefulWidget {
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
  ConsumerState<EditTicketDrawer> createState() => _EditTicketDrawerState();
}

class _EditTicketDrawerState extends ConsumerState<EditTicketDrawer> {
  late final _commentController = TextEditingController();
  late final _scrollController = ScrollController();

  @override
  void dispose() {
    _commentController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Widget _buildIconButton({
    required String tooltip,
    required SvgGenImage icon,
    required VoidCallback onTap,
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
      icon: icon.svg(
        width: 16,
        height: 16,
        colorFilter: const ColorFilter.mode(
          Color(0xff001E40),
          BlendMode.srcIn,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.read(appRouterProvider);

    final ticketAttachmentState = ref.watch(
      ticketAttachmentControllerProvider(ticketId: widget.ticket.id),
    );
    final ticketAttachmentController = ref.watch(
      ticketAttachmentControllerProvider(
        ticketId: widget.ticket.id,
      ).notifier,
    );

    final ticketsInTicketStatusController = ref.watch(
      ticketsInTicketStatusControllerProvider(widget.ticketStatus.id).notifier,
    );
    final commentsInTicketController = ref.watch(
      commentsInTicketControllerProvider(widget.ticket.id).notifier,
    );
    final createTicketForm = ref.watch(
      createTicketFormControllerProvider(widget.ticket).notifier,
    );
    final createCommentForm = ref.watch(
      createCommentFormControllerProvider(null).notifier,
    );
    final state = ref.watch(createTicketFormControllerProvider(widget.ticket));
    final titleError = state.title.error?.errorMessage;
    final descriptionError = state.description.error?.errorMessage;

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
          // Header (Navy Blue)
          Container(
            height: 64,
            decoration: const BoxDecoration(color: Color(0xff001E40)),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Assets.lib.infrastructure.assets.icons.edit.svg(
                      width: 18,
                      height: 18,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Edit Ticket',
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

          // Scrollable Body Content
          Expanded(
            child: ListView(
              controller: _scrollController,
              padding: const EdgeInsets.all(20),
              children: [
                // Status Badge
                Row(
                  children: [
                    const Text(
                      'Status:',
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
                        widget.ticketStatus.name,
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

                // Name/Title
                TextFormField(
                  initialValue: state.title.value,
                  onChanged: (value) => createTicketForm.setTitle(value),
                  decoration: InputDecoration(
                    labelText: 'Ticket Title *',
                    labelStyle: const TextStyle(
                      color: Color(0xFF43474F),
                      fontSize: 14,
                    ),
                    hintText: 'Enter title',
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

                // Description
                TextFormField(
                  initialValue: state.description.value,
                  maxLines: 4,
                  minLines: 2,
                  onChanged: (value) => createTicketForm.setDescription(value),
                  decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: const TextStyle(
                      color: Color(0xFF43474F),
                      fontSize: 14,
                    ),
                    hintText: 'Enter description',
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
                const SizedBox(height: 16),

                // Save & Delete Buttons Row
                Row(
                  children: [
                    Expanded(
                      child: SolidButton(
                        title: 'Save Changes',
                        onTap: () async {
                          await createTicketForm.edit(widget.ticketStatus.id);
                          final files = ticketAttachmentState.value;
                          if (files != null && files.isNotEmpty) {
                            final List<Document> newList = [];
                            for (final file in files) {
                              if (file.id == '') {
                                newList.add(file);
                              }
                            }
                            if (newList.isNotEmpty) {
                              final documentsInTicketController = ref.watch(
                                documentsInTicketControllerProvider().notifier,
                              );
                              documentsInTicketController.uploadDocument(
                                referenceId: widget.ticket.id,
                                files: newList,
                              );
                            }
                          }
                          ticketsInTicketStatusController.refresh(
                            widget.ticketStatus.id,
                          );
                          if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Ticket updated successfully'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    InkWell(
                      borderRadius: BorderRadius.circular(4),
                      onTap: () async {
                        final confirm = await showDialog<bool>(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text('Delete Ticket'),
                            content: const Text(
                              'Are you sure you want to delete this ticket? This action cannot be undone.',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(ctx, false),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(ctx, true),
                                child: const Text(
                                  'Delete',
                                  style: TextStyle(color: Color(0xFFBA1A1A)),
                                ),
                              ),
                            ],
                          ),
                        );
                        if (confirm == true) {
                          await ticketsInTicketStatusController.delete(
                            widget.ticket.id,
                          );
                          router.pop();
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 12,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFFBFF),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(color: const Color(0xFFBA1A1A)),
                        ),
                        child: Row(
                          children: [
                            Assets.lib.infrastructure.assets.icons.delete.svg(
                              width: 16,
                              height: 16,
                              colorFilter: const ColorFilter.mode(
                                Color(0xFFBA1A1A),
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(width: 6),
                            const Text(
                              'Delete',
                              style: TextStyle(
                                color: Color(0xFFBA1A1A),
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
                      icon: Assets.lib.infrastructure.assets.icons.plus,
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Consumer(
                              builder: (context, ref, child) {
                                final controller = ref.watch(
                                  usersInTicketControllerProvider(
                                    widget.ticket.id,
                                  ).notifier,
                                );
                                final state = ref.watch(
                                  usersInTicketControllerProvider(
                                    widget.ticket.id,
                                  ),
                                );
                                final users = state.value ?? [];
                                return AssignUsersDialog(
                                  initialSelectedUserIds: users
                                      .map((item) => item.id)
                                      .toSet(),
                                  projectId: widget.projectId,
                                  onSave: (users) {
                                    createTicketForm.setUsers(users);
                                    controller.setUsersInTicket(
                                      ticketId: widget.ticket.id,
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
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                UsersInTicket(ticket: widget.ticket),
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
                      icon: Assets.lib.infrastructure.assets.icons.uploadFile,
                      onTap: () {
                        ticketAttachmentController.pickAttachment();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                DocumentTableInTicket(state: ticketAttachmentState),
                const SizedBox(height: 20),
                const Divider(color: Color(0xffC3C6D1), height: 1),
                const SizedBox(height: 16),

                // Comments Section
                const Text(
                  'Comments',
                  style: TextStyle(
                    color: Color(0xff0B1C30),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                CommentsInTicket(ticketId: widget.ticket.id),
              ],
            ),
          ),

          // Pinned Bottom Comment Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Color(0xffC3C6D1), width: 1),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    maxLines: 4,
                    minLines: 1,
                    onChanged: (value) => createCommentForm.setContent(value),
                    decoration: InputDecoration(
                      hintText: 'Add a comment...',
                      hintStyle: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF74777F),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Color(0xFFC3C6D1)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Color(0xFF001E40),
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Material(
                  color: const Color(0xff001E40),
                  borderRadius: BorderRadius.circular(20),
                  clipBehavior: Clip.antiAlias,
                  child: InkWell(
                    onTap: () async {
                      final text = _commentController.text.trim();
                      if (text.isEmpty) return;
                      await createCommentForm.submit(widget.ticket.id);
                      await commentsInTicketController.refresh(
                        widget.ticket.id,
                      );
                      _commentController.clear();
                      scrollToBottom();
                    },
                    child: Container(
                      width: 38,
                      height: 38,
                      alignment: Alignment.center,
                      child: Assets.lib.infrastructure.assets.icons.send.svg(
                        width: 16,
                        height: 16,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

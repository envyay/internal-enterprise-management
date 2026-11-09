import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/controllers/policies_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/comments_in_ticket_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/create_comment_form_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/ticket_attachment_controller.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/comments_in_ticket.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/document_table_in_ticket.dart';
import 'package:enterprise_management/presentation/pages/task/widgets/users_in_ticket.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TicketDetailsDrawer extends ConsumerStatefulWidget {
  const TicketDetailsDrawer({
    super.key,
    required this.ticketStatus,
    required this.projectId,
    required this.ticket,
  });

  final TicketStatus ticketStatus;
  final String projectId;
  final Ticket ticket;

  @override
  ConsumerState<TicketDetailsDrawer> createState() =>
      _TicketDetailsDrawerState();
}

class _TicketDetailsDrawerState extends ConsumerState<TicketDetailsDrawer> {
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

  @override
  Widget build(BuildContext context) {
    final ticketAttachmentState = ref.watch(
      ticketAttachmentControllerProvider(ticketId: widget.ticket.id),
    );

    final commentsInTicketController = ref.watch(
      commentsInTicketControllerProvider(widget.ticket.id).notifier,
    );
    final createCommentForm = ref.watch(
      createCommentFormControllerProvider(null).notifier,
    );
    final policies = ref.watch(
      policiesControllerProvider.select((x) => x.value ?? []),
    );

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
                    Assets.lib.infrastructure.assets.icons.subtask.svg(
                      width: 18,
                      height: 18,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Ticket Details',
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

                // Title
                Text(
                  widget.ticket.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0B1C30),
                  ),
                ),
                const SizedBox(height: 12),

                // Description Card
                if (widget.ticket.description.isNotEmpty)
                  Text(
                    widget.ticket.description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff43474F),
                      height: 1.5,
                    ),
                  )
                else
                  const Text(
                    'No description provided.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFF74777F),
                      fontStyle: FontStyle.italic,
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
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
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
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
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
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 12),
                CommentsInTicket(ticketId: widget.ticket.id),
              ],
            ),
          ),

          // Pinned Bottom Comment Bar
          if (policies.contains(AppPolicy.createComment))
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

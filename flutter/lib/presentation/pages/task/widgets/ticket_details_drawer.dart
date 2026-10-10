import 'package:enterprise_management/domain/aggregates/ticket/ticket.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/forms/inputs/description_input.dart';
import 'package:enterprise_management/presentation/forms/inputs/name_input.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/comments_in_ticket_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/create_comment_form_controller.dart';
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
  ConsumerState<TicketDetailsDrawer> createState() => _EditTicketDrawerState();
}

class _EditTicketDrawerState extends ConsumerState<TicketDetailsDrawer> {
  late final _commentController = TextEditingController();
  late final _scrollController = ScrollController();

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
    final router = ref.read(appRouterProvider);
    final ticketsInTicketStatusController = ref.watch(
      ticketsInTicketStatusControllerProvider(widget.ticketStatus.id).notifier,
    );
    final commentsInTicketController = ref.watch(
      commentsInTicketControllerProvider(widget.ticket.id).notifier,
    );
    final createCommentForm = ref.watch(
      createCommentFormControllerProvider(null).notifier,
    );
    final state = ref.watch(createTicketFormControllerProvider(widget.ticket));
    final titleError = state.title.error?.errorMessage;
    final descriptionError = state.description.error?.errorMessage;
    return Drawer(
      width: 500,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            child: Container(
              height: 55,
              color: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Ticket Details',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Positioned(
            top: 55,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              controller: _scrollController,
              padding: .only(bottom: 80),
              children: [
                Text('Status: ${widget.ticketStatus.name}'),
                Text('Title: ${widget.ticket.title}'),
                Text('Description: ${widget.ticket.description}'),
                Text('Attachment: '),

                Text('Assigned User:'),
                UsersInTicket(ticket: widget.ticket),
                Container(
                  alignment: .topLeft,
                  width: .infinity,
                  child: Text('Comment'),
                ),
                CommentsInTicket(ticketId: widget.ticket.id),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: .symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(width: 1, color: Color(0xffC3C6D1)),
                ),
              ),
              child: Column(
                spacing: 12,
                children: [
                  TextField(
                    maxLines: 5,
                    minLines: 1,
                    onChanged: (value) {
                      createCommentForm.setContent(value);
                    },
                    controller: _commentController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Comment',
                      prefixIcon: Container(
                        padding: .all(8),
                        margin: .only(left: 8, right: 4),
                        height: 32,
                        width: 38,
                        child: Assets.lib.infrastructure.assets.icons.attachment
                            .svg(),
                      ),
                      suffixIcon: InkWell(
                        onTap: () async {
                          await createCommentForm.submit(widget.ticket.id);
                          await commentsInTicketController.refresh(widget.ticket.id);
                          _commentController.clear();

                          scrollToBottom();
                        },
                        child: Container(
                          padding: .all(8),
                          margin: .only(left: 4, right: 8, top: 8, bottom: 8),
                          height: 32,
                          width: 38,
                          decoration: BoxDecoration(
                            color: Color(0xff001E40),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Assets.lib.infrastructure.assets.icons.send
                              .svg(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

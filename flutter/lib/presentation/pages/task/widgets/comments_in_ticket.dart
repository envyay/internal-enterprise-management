import 'package:enterprise_management/presentation/controllers/policies_controller.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/comments_in_ticket_controller.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CommentsInTicket extends ConsumerWidget {
  const CommentsInTicket({super.key, required this.ticketId});

  final String ticketId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(commentsInTicketControllerProvider(ticketId));
    final policies = ref.watch(
      policiesControllerProvider.select((x) => x.value ?? []),
    );
    final canDeleteComment = policies.contains(AppPolicy.deleteComment);

    return state.when(
      data: (comments) {
        if (comments.isEmpty) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'No comments yet',
              style: TextStyle(
                color: Color(0xFF74777F),
                fontSize: 13,
                fontStyle: FontStyle.italic,
              ),
            ),
          );
        }

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: comments.length,
          itemBuilder: (context, index) {
            final comment = comments[index];
            final user = comment.user;
            final name = user.fullName;
            final parts = name.trim().split(' ');
            final initials = parts.length >= 2
                ? '${parts.first[0]}${parts.last[0]}'.toUpperCase()
                : (name.isNotEmpty ? name[0].toUpperCase() : '');

            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: const Color(0xFFC3C6D1), width: 1.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD6E4FF),
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          initials,
                          style: const TextStyle(
                            color: Color(0xFF001D4A),
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF191C20),
                          ),
                        ),
                      ),
                      if (canDeleteComment)
                        IconButton(
                          icon: const Icon(
                            Icons.delete_outline,
                            size: 18,
                            color: Color(0xFFBA1A1A),
                          ),
                          tooltip: 'Delete comment',
                          splashRadius: 18,
                          visualDensity: VisualDensity.compact,
                          padding: const EdgeInsets.all(4),
                          constraints: const BoxConstraints(
                            minWidth: 28,
                            minHeight: 28,
                          ),
                          onPressed: () async {
                            final confirm = await showDialog<bool>(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                title: const Text('Delete Comment'),
                                content: const Text(
                                  'Are you sure you want to delete this comment? This action cannot be undone.',
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
                                      style: TextStyle(
                                        color: Color(0xFFBA1A1A),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                            if (confirm == true) {
                              final success = await ref
                                  .read(
                                    commentsInTicketControllerProvider(
                                      ticketId,
                                    ).notifier,
                                  )
                                  .delete(comment.id);
                              if (context.mounted && !success) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Failed to delete comment'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              }
                            }
                          },
                        ),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.only(left: 48),
                    child: Text(
                      comment.content,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF42474F),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      error: (error, stackTrace) {
        return const Text('Error loading comments');
      },
      loading: () {
        return const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        );
      },
    );
  }
}

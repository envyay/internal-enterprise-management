import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/presentation/controllers/policies_controller.dart';
import 'package:enterprise_management/presentation/pages/project/controllers/ticket_statuses_in_project_controller.dart';
import 'package:enterprise_management/presentation/pages/project/widgets/edit_ticket_status_dialog.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/ticket_statuses_controller.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/presentation/widgets/error_dialog.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TicketStatusItem extends ConsumerWidget {
  const TicketStatusItem({
    super.key,
    required this.ticketStatus,
    required this.name,
  });

  final TicketStatus ticketStatus;
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(
      ticketStatusesInProjectControllerProvider.notifier,
    );
    final router = ref.read(appRouterProvider);

    final policies = ref.watch(
      policiesControllerProvider.select((x) => x.value ?? []),
    );

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFFE0E2EC)),
      ),
      child: Row(
        spacing: 4,
        children: [
          Expanded(
            child: Text(
              ticketStatus.name,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF191C20),
              ),
            ),
          ),
          if (policies.contains(AppPolicy.updateTicketStatus))
            InkWell(
              borderRadius: BorderRadius.circular(6),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return EditTicketStatusDialog(ticketStatus: ticketStatus);
                  },
                );
              },
              child: const Icon(
                Icons.edit_outlined,
                size: 16,
                color: Color(0xFF006C49),
              ),
            ),
          if (policies.contains(AppPolicy.deleteTicketStatus)) ...[
            const SizedBox(width: 8),
            InkWell(
              borderRadius: BorderRadius.circular(6),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Delete Confirmation'),
                    content: Text(
                      'Are you sure to delete "${ticketStatus.name}"?',
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => router.pop(context),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () async {
                          final project = ticketStatus.projectId;
                          final res = await controller.delete(ticketStatus.id);
                          router.pop();
                          switch (res) {
                            case Success():
                              controller.refresh(project);
                              ref
                                  .read(ticketStatusesControllerProvider.notifier)
                                  .refresh(project);
                            case Failure(:final failure):
                              if (context.mounted) {
                                showErrorDialog(context, failure: failure);
                              }
                          }
                        },
                        child: const Text(
                          'Delete',
                          style: TextStyle(color: Color(0xffBA1A1A)),
                        ),
                      ),
                    ],
                  ),
                );
              },
              child: const Icon(
                Icons.delete_outline,
                size: 16,
                color: Color(0xFFBA1A1A),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

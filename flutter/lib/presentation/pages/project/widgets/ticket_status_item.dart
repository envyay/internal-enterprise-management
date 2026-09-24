import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
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
    final router = ref.read(appRouterProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Row(
        children: [
          Expanded(child: Row(children: [Text(ticketStatus.name)])),

          Container(
            padding: EdgeInsets.symmetric(vertical: 4),
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.edit_outlined,
                    size: 18,
                    color: Color(0xff006C49),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Container();
                        // return EditProjectDialog(project: project,);
                      },
                    );
                  },
                  tooltip: 'Edit',
                ),
                IconButton(
                  icon: const Icon(
                    Icons.delete_outline,
                    size: 18,
                    color: Color(0xffBA1A1A),
                  ),
                  onPressed: () {
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
                              // await controller.delete(ticketStatus.id);
                              router.pop();
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
                  tooltip: 'Delete',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

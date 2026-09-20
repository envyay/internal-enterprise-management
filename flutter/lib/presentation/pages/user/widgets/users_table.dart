import 'package:enterprise_management/presentation/pages/user/controllers/users_controller.dart';
import 'package:enterprise_management/presentation/pages/user/widgets/edit_user_dialog.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersTable extends ConsumerWidget {
  const UsersTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(usersControllerProvider);
    final controller = ref.read(usersControllerProvider.notifier);
    final router = ref.read(appRouterProvider);
    return state.when(
      data: (users) {
        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final item = users[index];
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Table(
                border: (index < (users.length - 1))
                    ? const TableBorder(
                  bottom: BorderSide(color: Color(0xffC3C6D1)),
                )
                    : null,
                columnWidths: const {
                  0: FixedColumnWidth(500),
                  1: FlexColumnWidth(4),
                  2: FlexColumnWidth(),
                  3: FlexColumnWidth(),
                },
                children: [
                  TableRow(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: item.status == 0 ? const Color(0xffBA1A1A) : const Color(0xff006C49),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            Text(
                              item.fullName,
                              style: const TextStyle(
                                color: Color(0xff0B1C30),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          item.email,
                          style: TextStyle(
                            color: Color(0xff43474F),
                            fontSize: 12,
                          ),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          item.status == 1 ? 'Active' : 'InActive',
                          style: TextStyle(
                            color: Color(0xff43474F),
                            fontSize: 12,
                          ),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 4),
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
                                    return EditUserDialog(
                                      user: item,
                                    );
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
                                      'Are you sure to delete "${item.fullName}"?',
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => router.pop(context),

                                        child: const Text('Cancel'),
                                      ),
                                      TextButton(
                                        onPressed: () async {
                                          await controller.delete(item.id);
                                          router.pop();
                                        },
                                        child: const Text(
                                          'Delete',
                                          style: TextStyle(
                                            color: Color(0xffBA1A1A),
                                          ),
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
                ],
              ),
            );
          },
        );
      },
      error: (error, stackTrace) {
        return const Text('Error');
      },
      loading: () {
        return const Text('Loading...');
      },
    );
  }
}

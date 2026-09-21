import 'package:enterprise_management/presentation/pages/department/controllers/departments_controller.dart';
import 'package:enterprise_management/presentation/pages/department/widgets/edit_department_dialog.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DepartmentsTable extends ConsumerWidget {
  const DepartmentsTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(departmentsControllerProvider);
    final controller = ref.watch(departmentsControllerProvider.notifier);
    final router = ref.read(appRouterProvider);
    return state.when(
      data: (departments) {
        return ListView.builder(
          itemCount: departments.length,
          itemBuilder: (context, index) {
            final item = departments[index];
            final isActive = item.isActive;

            return AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              margin: const EdgeInsets.symmetric(vertical: 2),
              decoration: BoxDecoration(
                color: isActive ? const Color(0xffEFF4FF) : Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(6),
                  onTap: () async {
                    await controller.onSelect(item.id);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Table(
                      columnWidths: const {
                        0: FixedColumnWidth(300),
                        1: FlexColumnWidth(),
                        2: FlexColumnWidth(),
                        3: FlexColumnWidth(),
                      },
                      children: [
                        TableRow(
                          children: [
                            // Column 0: Department Name
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
                                      color: const Color(0xff006C49),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  Text(
                                    item.name,
                                    style: TextStyle(
                                      color: isActive
                                          ? const Color(0xff001E40)
                                          : const Color(0xff0B1C30),
                                      fontSize: 12,
                                      fontWeight: isActive
                                          ? FontWeight.w600
                                          : FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Column 1: Head
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                '-',
                                style: TextStyle(
                                  color: Color(0xff43474F),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            // Column 2: Members
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                '-',
                                style: TextStyle(
                                  color: Color(0xff43474F),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            // Column 3: Actions (Edit & Delete)
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
                                          return EditDepartmentDialog(
                                            department: item,
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
                                          title: const Text(
                                            'Delete Confirmation',
                                          ),
                                          content: Text(
                                            'Are you sure to delete "${item.name}"?',
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () =>
                                                  router.pop(context),
                                              child: const Text('Cancel'),
                                            ),
                                            TextButton(
                                              onPressed: () async {
                                                await controller.delete(
                                                  item.id,
                                                );
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
                  ),
                ),
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

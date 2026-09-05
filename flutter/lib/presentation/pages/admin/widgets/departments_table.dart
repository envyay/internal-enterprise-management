import 'package:enterprise_management/presentation/pages/admin/controllers/departments_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DepartmentsTable extends ConsumerWidget {
  const DepartmentsTable({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(departmentsControllerProvider);
    return state.when(
      data: (departments) {
        return ListView.builder(
          itemCount: departments.length,
          itemBuilder: (context, index) {
            final item = departments[index];
            return Container(
              padding: .symmetric(horizontal: 16),
              child: Table(
                border: (index < (100 - 1))
                    ? TableBorder(bottom: BorderSide(color: Color(0xffC3C6D1)))
                    : null,
                columnWidths: {
                  0: FixedColumnWidth(300),
                  1: FlexColumnWidth(),
                  2: FlexColumnWidth(),
                  3: FlexColumnWidth(),
                },
                children: [
                  TableRow(
                    children: [
                      Container(
                        padding: .symmetric(vertical: 16),
                        child: Row(
                          spacing: 8,
                          crossAxisAlignment: .center,
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Color(0xff006C49),
                                borderRadius: .circular(12),
                              ),
                            ),
                            Text(
                              item.name ?? "",
                              style: TextStyle(
                                color: Color(0xff0B1C30),
                                fontSize: 12,
                                fontWeight: .w500,
                              ),
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
        return Text('Error');
      },
      loading: () {
        return Text('Loading...');
      },
    );
  }
}

import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/pages/department/controllers/users_in_department_controller.dart';
import 'package:enterprise_management/presentation/pages/department/widgets/add_users_dialog.dart';
import 'package:enterprise_management/presentation/pages/department/widgets/create_department_dialog.dart';
import 'package:enterprise_management/presentation/pages/department/widgets/departments_table.dart';
import 'package:enterprise_management/presentation/pages/department/widgets/users_in_department.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../widgets/base_page.dart';
import '../../widgets/overview_container.dart';

@RoutePage()
class DepartmentPage extends ConsumerWidget {
  const DepartmentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: BasePage(
        title: 'Departments',
        description:
            'Manage departments, users, and organizational permissions.',
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: OverviewContainer(
                    title: 'Departments',
                    icon: Assets.lib.infrastructure.assets.icons.create,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Consumer(
                            builder: (context, ref, child) {
                              return CreateDepartmentDialog();
                            },
                          );
                        },
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: .symmetric(horizontal: 16),
                          child: Table(
                            border: TableBorder(
                              bottom: BorderSide(
                                color: Color(0xffC3C6D1),
                                width: 1.5,
                              ),
                            ),
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
                                    child: Text(
                                      'Department Name',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: .symmetric(vertical: 16),
                                    child: Text(
                                      'Head',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: .symmetric(vertical: 16),
                                    child: Text(
                                      'Members',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: .symmetric(vertical: 16),
                                    alignment: .centerRight,
                                    child: Text(
                                      'Actions',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(child: DepartmentsTable()),
                      ],
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: OverviewContainer(
                    title: 'Users In Department',
                    icon: Assets.lib.infrastructure.assets.icons.plus,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Consumer(
                            builder: (context, ref, child) {
                              final state = ref.watch(usersInDepartmentControllerProvider);
                              final controller = ref.watch(usersInDepartmentControllerProvider.notifier);
                              final department = state.value;
                              return AddUsersDialog(
                                initialSelectedUserIds: department?.users.map((item) => item.id).toSet() ?? {},
                                onSave: (users) {
                                  if (department == null) return;
                                  controller.setUsersInDepartment(id: department.id, userIds: users.map((item) => item.id).toList());
                                },
                              );
                            },
                          );
                        },
                      );
                    },
                    child: UsersInDepartment(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

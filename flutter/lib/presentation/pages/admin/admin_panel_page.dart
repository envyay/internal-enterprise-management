import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/pages/admin/controllers/create_department_form_controller.dart';
import 'package:enterprise_management/presentation/pages/admin/controllers/departments_controller.dart';
import 'package:enterprise_management/presentation/pages/admin/widgets/departments_table.dart';
import 'package:enterprise_management/presentation/widgets/create_department_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../widgets/base_page.dart';
import '../../widgets/overview_container.dart';

@RoutePage()
class AdminPanelPage extends ConsumerWidget {
  const AdminPanelPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(departmentsControllerProvider.notifier);
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: BasePage(
        title: 'Admin Panel',
        description:
            'Manage departments, users, and organizational permissions.',
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: 12,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 7,
                  mainAxisCellCount: 3,
                  child: OverviewContainer(
                    title: 'Departments',
                    icon:
                        Assets.lib.infrastructure.assets.icons.createDepartment,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Consumer(
                            builder: (context, ref, child) {
                              // final form = ref.watch(CreateDepartmentFormControllerProvider.notifier);
                              // final state = ref.watch(CreateDepartmentFormControllerProvider);
                              // final error = state.name.error?.errorMessage;
                              // final name = state.name.value;
                              return CreateDepartmentForm(
                                title: 'Create Department',
                                icon: Assets
                                    .lib
                                    .infrastructure
                                    .assets
                                    .icons
                                    .close,
                              );
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
                  crossAxisCellCount: 5,
                  mainAxisCellCount: 3,
                  child: OverviewContainer(
                    title: 'Assign Users',
                    child: Container(
                      color: Colors.blue,
                      // width: .maxFinite,
                      child: Text('Search...'),
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 12,
                  mainAxisCellCount: 3,
                  child: OverviewContainer(
                    title: 'Role-Based Access Control (RBAC)',
                    child: Column(children: [Text('data')]),
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

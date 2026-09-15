import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:enterprise_management/presentation/pages/admin/controllers/create_department_form_controller.dart';
import 'package:enterprise_management/presentation/pages/admin/controllers/departments_controller.dart';
import 'package:enterprise_management/presentation/pages/admin/widgets/departments_table.dart';
import 'package:enterprise_management/presentation/pages/admin/widgets/list_unassigned_users.dart';
import 'package:enterprise_management/presentation/widgets/create_department_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/base_page.dart';
import '../../widgets/overview_container.dart';

@RoutePage()
class AdminPanelPage extends ConsumerWidget {
  const AdminPanelPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  crossAxisCellCount: 5,
                  mainAxisCellCount: 3,
                  child: OverviewContainer(
                    title: 'Assign Users',
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Container(
                          margin: .symmetric(vertical: 16, horizontal: 16),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.0),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          width: .maxFinite,
                          child: Row(
                            spacing: 10,
                            children: [
                              Container(
                                margin: .symmetric(horizontal: 16),
                                child: Assets
                                    .lib
                                    .infrastructure
                                    .assets
                                    .icons
                                    .search
                                    .svg(),
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search...',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          margin: .symmetric(horizontal: 16),
                          child: Text(
                            'Unassigned Users',
                            style: TextStyle(fontWeight: .w500, fontSize: 16),
                          ),
                        ),

                        ListUnassignedUsers()

                      ],
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

import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/widgets/base_page.dart';
import 'package:enterprise_management/widgets/overview_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

@RoutePage()
class AdminPanelPage extends StatelessWidget {
  const AdminPanelPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                        Expanded(
                          child: ListView.builder(
                            itemCount: 100,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: .symmetric(horizontal: 16),
                                child: Table(
                                  border: (index < (100 - 1))
                                      ? TableBorder(
                                          bottom: BorderSide(
                                            color: Color(0xffC3C6D1),
                                          ),
                                        )
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
                                                decoration: BoxDecoration(color: Color(0xff006C49), borderRadius: .circular(12)),
                                              ),
                                              Text(
                                                'Engineering',
                                                style: TextStyle(
                                                  color: Color(0xff0B1C30),
                                                  fontSize: 12,
                                                  fontWeight: .w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: .symmetric(vertical: 16),
                                          child: Text(
                                            'Sarah Jenkins',
                                            style: TextStyle(
                                              color: Color(0xff0B1C30),
                                              fontSize: 12,
                                              fontWeight: .w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: .symmetric(vertical: 16),
                                          child: Text(
                                            '42',
                                            style: TextStyle(
                                              color: Color(0xff0B1C30),
                                              fontSize: 12,
                                              fontWeight: .w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: .symmetric(vertical: 16),
                                          alignment: .centerRight,
                                          child: Text('$index'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
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
                      child: Text('Search...')
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 12,
                  mainAxisCellCount: 3,
                  child: OverviewContainer(title: 'Role-Based Access Control (RBAC)', child: Column(
                    children: [
                      Text('data')
                    ],
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

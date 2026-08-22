import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/widgets/base_page.dart';
import 'package:enterprise_management/widgets/overview_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../gen/assets.gen.dart';

@RoutePage()
class ProjectTrackerPage extends StatelessWidget {
  const ProjectTrackerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: BasePage(
        title: 'Project Alpha Tracker',
        description: 'Manage Q3 deliverables and milestones.',
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: 8,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: OverviewContainer(
                    title: 'To Do',
                    child: Column(
                      children: [
                        Container(
                          padding: .symmetric(horizontal: 12, vertical: 12),
                          child: Container(
                            padding: .symmetric(horizontal: 12, vertical: 12),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffC3C6D1),
                                width: 1,
                              ),
                              borderRadius: .circular(4),
                            ),
                            child: Column(
                              crossAxisAlignment: .start,
                              spacing: 4,
                              children: [
                                Container(
                                  padding: .symmetric(
                                    horizontal: 8,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xff003366),
                                    borderRadius: .circular(2),
                                  ),
                                  child: Text(
                                    'DEVELOPMENT',
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 10,
                                      fontWeight: .bold,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Implement OAuth2 Flow',
                                  style: TextStyle(
                                    color: Color(0xff0B1C30),
                                    fontWeight: .w500,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Set up authentication endpoints and integrate with Azure AD for single sign-on.',
                                  style: TextStyle(
                                    color: Color(0xff43474F),
                                    fontSize: 12,
                                    fontWeight: .w400,
                                  ),
                                ),
                                Container(
                                  margin: .only(top: 12),
                                  padding: .symmetric(vertical: 8),
                                  decoration: BoxDecoration(border: Border(top: BorderSide(width: 1, color: Color(0xffE5EEFF)))),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Assets.icons.lightBulb.svg(),
                                        ],
                                      ),
                                      Row(
                                        spacing: 12,
                                        children: [
                                          Assets.icons.message.svg(),
                                          Assets.icons.attachment.svg(),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: OverviewContainer(
                    title: 'In Progress',
                    child: Column(),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: OverviewContainer(title: 'In Review', child: Column()),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: OverviewContainer(title: 'Done', child: Column()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DashboardTile extends StatelessWidget {
  final int index;

  const DashboardTile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(
          'Tile $index',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}

import 'package:enterprise_management/widgets/base_page.dart';
import 'package:enterprise_management/widgets/outline_icon_button.dart';
import 'package:enterprise_management/widgets/solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/overview_container.dart';
import '../widgets/task_tile.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: BasePage(
        title: 'Overview',
        description: 'Real-time enterprise metrics and AI-driven insights.',
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: 8,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 5,
                  mainAxisCellCount: 2,
                  child: const AIInsightSummary(title: 'AI Insights Summary'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 2,
                  child: const DashboardTile(index: 1),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 2,
                  child: OverviewContainer(
                    title: 'Recent Tasks',
                    child: ListView.builder(
                      itemCount: 1000,
                      itemBuilder: (context, index) {
                        return TaskTile();
                      },
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 2,
                  child: const OverviewContainer(
                    title: 'Department Updates',
                    child: Column(),
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

class AIInsightSummary extends StatelessWidget {
  const AIInsightSummary({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: Color(0xffC3C6D1)),
      ),
      child: SingleChildScrollView(
        child: Container(
          padding: .symmetric(vertical: 24, horizontal: 24),
          child: Column(
            spacing: 12,
            crossAxisAlignment: .start,
            children: [
              Row(
                spacing: 8,
                children: [
                  Container(
                    padding: .all(8),
                    decoration: BoxDecoration(
                      color: Color(0xff003366),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: SvgPicture.asset('assets/light_bulb.svg'),
                  ),
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: .w600),
                  ),
                ],
              ),
              Text(
                'System detects a 15% increase in cross-departmental operational efficiency this week.',
                style: TextStyle(
                  fontWeight: .w600,
                  fontSize: 24,
                  color: Color(0xff0B1C30),
                ),
              ),
              Text(
                'Automated task routing in the Admin Panel has reduced average completiontimes. Consider applying similar workflows to the Knowledge Base updatecycle.',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: .w400,
                  color: Color(0xff43474F),
                ),
              ),
              Container(
                padding: .only(top: 88),
                child: Row(
                  spacing: 12,
                  children: [
                    SolidButton(title: 'View Full Report', onTap: () {}),
                    OutlineIconButton(title: 'Dismiss', onTap: () {}),
                  ],
                ),
              ),
            ],
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

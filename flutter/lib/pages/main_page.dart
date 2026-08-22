import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/app_router.gr.dart';
import '../widgets/navigation_side_bar.dart';
import '../widgets/top_bar.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        DashboardRoute(),
        AdminPanelRoute(),
        KnowledgeBaseRoute(),
        ProjectTrackerRoute(),
      ],
      builder: (context, child) {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(color: Color(0xffF8F9FF)),
            child: Row(
              children: [
                const NavigationSideBar(),
                Expanded(
                  child: Column(
                    children: [
                      const TopBar(),
                      Expanded(child: child),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

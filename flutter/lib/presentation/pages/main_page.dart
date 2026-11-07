import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/presentation/controllers/policies_controller.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../router/app_router.gr.dart';
import '../widgets/navigation_side_bar.dart';
import '../widgets/top_bar.dart';

@RoutePage()
class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isInit = false;
    final policies = ref.watch(
      policiesControllerProvider.select((x) => x.value ?? []),
    );
    final routes = [
      EmptyRoute(),
      if (policies.contains(AppPolicy.chat)) KnowledgeBaseRoute(),
      if (policies.contains(AppPolicy.getAllTickets)) ProjectTrackerRoute(),
      if (policies.contains(AppPolicy.getAllDepartments)) DepartmentRoute(),
      if (policies.contains(AppPolicy.getAllProjects)) ProjectRoute(),
      if (policies.contains(AppPolicy.getAllUserGroups)) UserGroupRoute(),
      if (policies.contains(AppPolicy.getAllUsers)) UserRoute(),
    ];
    return AutoTabsRouter(
      routes: routes,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        if (policies.isNotEmpty && isInit == false) {
          Future.delayed(Duration.zero, () {
            tabsRouter.setActiveIndex(1);
          });
          isInit = true;
        }
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(color: Color(0xffF8F9FF)),
            child: Row(
              children: [
                NavigationSideBar(tabsRouter: tabsRouter, routes: routes),
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

import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/presentation/controllers/policies_controller.dart';
import 'package:enterprise_management/presentation/router/app_router.gr.dart';
import 'package:enterprise_management/shared_kernel/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../infrastructure/assets/gen/assets.gen.dart';
import 'navigation_item.dart';

class NavigationSideBar extends ConsumerWidget {
  const NavigationSideBar({super.key, required this.tabsRouter, required this.routes});

  final List<PageRouteInfo<void>> routes;
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final policies = ref.watch(
      policiesControllerProvider.select((x) => x.value ?? []),
    );
    return Container(
      width: 280,
      decoration: const BoxDecoration(
        border: Border(right: BorderSide(width: 2, color: Color(0xffD9D9D9))),
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 24,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Enterprise Management',
                          style: TextStyle(
                            color: Color(0xff001E40),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const Text(
                          'Enterprise Suite',
                          style: TextStyle(
                            color: Color(0xff43474F),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (policies.contains(AppPolicy.chat))
                    NavigationItem(
                      title: 'Knowledge Base',
                      icon: Assets.lib.infrastructure.assets.icons.book,
                      active: tabsRouter.activeIndex == routes.indexOf(KnowledgeBaseRoute()),
                      onTap: () {
                        tabsRouter.navigate(KnowledgeBaseRoute());
                      },
                    ),
                  if (policies.contains(AppPolicy.getAllTickets))
                    NavigationItem(
                      title: 'Tasks',
                      icon: Assets.lib.infrastructure.assets.icons.tick,
                      active: tabsRouter.activeIndex == routes.indexOf(ProjectTrackerRoute()),
                      onTap: () {
                        tabsRouter.navigate(ProjectTrackerRoute());
                      },
                    ),
                  if (policies.contains(AppPolicy.getAllDepartments))
                    NavigationItem(
                      title: 'Departments',
                      icon: Assets.lib.infrastructure.assets.icons.adminPanel,
                      active: tabsRouter.activeIndex == routes.indexOf(DepartmentRoute()),
                      onTap: () {
                        tabsRouter.navigate(DepartmentRoute());
                      },
                    ),
                  if (policies.contains(AppPolicy.getAllProjects))
                    NavigationItem(
                      title: 'Projects',
                      icon: Assets.lib.infrastructure.assets.icons.project,
                      active: tabsRouter.activeIndex == routes.indexOf(ProjectRoute()),
                      onTap: () {
                        tabsRouter.navigate(ProjectRoute());
                      },
                    ),
                  if (policies.contains(AppPolicy.getAllUserGroups))
                    NavigationItem(
                      title: 'User Groups',
                      icon: Assets.lib.infrastructure.assets.icons.userGroup,
                      active: tabsRouter.activeIndex == routes.indexOf(UserGroupRoute()),
                      onTap: () {
                        tabsRouter.navigate(UserGroupRoute());
                      },
                    ),
                  if (policies.contains(AppPolicy.getAllUsers))
                    NavigationItem(
                      title: 'Users',
                      icon: Assets.lib.infrastructure.assets.icons.user,
                      active: tabsRouter.activeIndex == routes.indexOf(UserRoute()),
                      onTap: () {
                        tabsRouter.navigate(UserRoute());
                      },
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

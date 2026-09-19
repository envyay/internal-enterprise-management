import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/presentation/widgets/solid_button.dart';
import 'package:flutter/material.dart';

import '../../infrastructure/assets/gen/assets.gen.dart';
import 'navigation_item.dart';

class NavigationSideBar extends StatelessWidget {
  const NavigationSideBar({super.key, required this.tabsRouter});

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
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
                  NavigationItem(
                    title: 'Dashboard',
                    icon: Assets.lib.infrastructure.assets.icons.grid,
                    active: tabsRouter.activeIndex == 0,
                    onTap: () {
                      tabsRouter.setActiveIndex(0);
                    },
                  ),
                  NavigationItem(
                    title: 'Departments',
                    icon: Assets.lib.infrastructure.assets.icons.adminPanel,
                    active: tabsRouter.activeIndex == 1,
                    onTap: () {
                      tabsRouter.setActiveIndex(1);
                    },
                  ),
                  NavigationItem(
                    title: 'Knowledge Base',
                    icon: Assets.lib.infrastructure.assets.icons.book,
                    active: tabsRouter.activeIndex == 2,
                    onTap: () {
                      tabsRouter.setActiveIndex(2);
                    },
                  ),
                  NavigationItem(
                    title: 'Tasks',
                    icon: Assets.lib.infrastructure.assets.icons.tick,
                    active: tabsRouter.activeIndex == 3,
                    onTap: () {
                      tabsRouter.setActiveIndex(3);
                    },
                  ),
                  NavigationItem(
                    title: 'User Groups',
                    icon: Assets.lib.infrastructure.assets.icons.tick,
                    active: tabsRouter.activeIndex == 4,
                    onTap: () {
                      tabsRouter.setActiveIndex(4);
                    },
                  ),
                  NavigationItem(
                    title: 'Projects',
                    icon: Assets.lib.infrastructure.assets.icons.tick,
                    active: tabsRouter.activeIndex == 5,
                    onTap: () {
                      tabsRouter.setActiveIndex(5);
                    },
                  ),
                  NavigationItem(
                    title: 'Users',
                    icon: Assets.lib.infrastructure.assets.icons.tick,
                    active: tabsRouter.activeIndex == 6,
                    onTap: () {
                      tabsRouter.setActiveIndex(6);
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

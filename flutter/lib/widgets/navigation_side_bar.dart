import 'package:auto_route/auto_route.dart';
import 'package:enterprise_management/widgets/solid_button.dart';
import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'navigation_item.dart';

class NavigationSideBar extends StatelessWidget {
  const NavigationSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);

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
                        SolidButton(
                          margin: const EdgeInsets.only(top: 24, bottom: 24),
                          title: 'New Project',
                          prefix: Assets.icons.plus,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  NavigationItem(
                    title: 'Dashboard',
                    icon: Assets.icons.grid,
                    active: tabsRouter.activeIndex == 0,
                    onTap: () {
                      tabsRouter.setActiveIndex(0);
                    },
                  ),
                  NavigationItem(
                    title: 'Admin Panel',
                    icon: Assets.icons.adminPanel,
                    active: tabsRouter.activeIndex == 1,
                    onTap: () {
                      tabsRouter.setActiveIndex(1);
                    },
                  ),
                  NavigationItem(
                    title: 'Knowledge Base',
                    icon: Assets.icons.book,
                    active: tabsRouter.activeIndex == 2,
                    onTap: () {
                      tabsRouter.setActiveIndex(2);
                    },
                  ),
                  NavigationItem(
                    title: 'Tasks',
                    icon: Assets.icons.tick,
                    active: tabsRouter.activeIndex == 3,
                    onTap: () {
                      tabsRouter.setActiveIndex(3);
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 24, right: 24),
                  height: 1,
                  decoration: const BoxDecoration(color: Color(0xffD9D9D9)),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 32,
              top: 32,
              right: 32,
              bottom: 20,
            ),
            child: Row(
              spacing: 12,
              children: [
                Assets.icons.settings.svg(width: 20, height: 20),
                const Text(
                  'Settings',
                  style: TextStyle(
                    color: Color(0xff43474F),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
            child: Row(
              spacing: 12,
              children: [
                Assets.icons.support.svg(width: 20, height: 20),
                const Text(
                  'Support',
                  style: TextStyle(
                    color: Color(0xff43474F),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

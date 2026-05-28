import 'package:enterprise_management/widgets/solid_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'navigation_item.dart';

class NavigationSideBar extends StatelessWidget {
  const NavigationSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(width: 2, color: Color(0xffD9D9D9))),
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Container(
                    padding: .symmetric(horizontal: 24, vertical: 24),
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Enterprise Management',
                          style: TextStyle(
                            color: Color(0xff001E40),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Enterprise Suite',
                          style: TextStyle(
                            color: Color(0xff43474F),
                            fontSize: 12,
                            fontWeight: .w600,
                          ),
                        ),
                        SolidButton(
                          margin: .only(top: 24, bottom: 24),
                          title: 'New Project',
                          assetsPath: 'plus.svg',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  NavigationItem(
                    title: 'Dashboard',
                    assetsPath: 'grid.svg',
                    active: true,
                    onTap: () {},
                  ),
                  NavigationItem(
                    title: 'Admin Panel',
                    assetsPath: 'admin_panel.svg',
                    active: false,
                    onTap: () {},
                  ),
                  NavigationItem(
                    title: 'Knowledge Base',
                    assetsPath: 'book.svg',
                    active: false,
                    onTap: () {},
                  ),
                  NavigationItem(
                    title: 'Tasks',
                    assetsPath: 'tick.svg',
                    active: false,
                    onTap: () {},
                  ),
                  NavigationItem(
                    title: 'Timeline',
                    assetsPath: 'timeline.svg',
                    active: false,
                    onTap: () {},
                  ),
                  NavigationItem(
                    title: 'Communication',
                    assetsPath: 'communication.svg',
                    active: false,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: .only(left: 24, right: 24),
                  height: 1,
                  decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                ),
              ],
            ),
          ),
          Container(
            padding: .only(left: 32, top: 32, right: 32, bottom: 20),
            child: Row(
              spacing: 12,
              children: [
                SvgPicture.asset('assets/settings.svg', width: 20, height: 20),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Color(0xff43474F),
                    fontSize: 14,
                    fontWeight: .w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: .only(left: 32, right: 32, bottom: 32),
            child: Row(
              spacing: 12,
              children: [
                SvgPicture.asset('assets/support.svg', width: 20, height: 20),
                Text(
                  'Support',
                  style: TextStyle(
                    color: Color(0xff43474F),
                    fontSize: 14,
                    fontWeight: .w600,
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

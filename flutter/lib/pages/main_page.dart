import 'package:enterprise_management/pages/task_page.dart';
import 'package:enterprise_management/widgets/navigation_side_bar.dart';
import 'package:enterprise_management/widgets/top_bar.dart';
import 'package:flutter/material.dart';

import 'admin_panel_page.dart';
import 'dashboard_page.dart';
import 'knowledge_base_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xffF8F9FF)),
        child: Row(
          children: [
            NavigationSideBar(),
            Expanded(
              child: Column(
                children: [
                  TopBar(),
                  Expanded(child: KnowledgeBasePage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

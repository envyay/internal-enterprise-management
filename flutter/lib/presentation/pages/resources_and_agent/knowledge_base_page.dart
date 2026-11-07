import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/resources_controller.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/resources_in_departments_controller.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/resources_in_tickets_controller.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/widgets/agent_chat.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/widgets/agent_chat_history_drawer.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/widgets/document_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../infrastructure/assets/gen/assets.gen.dart';
import '../../widgets/base_page.dart';
import '../../widgets/overview_container.dart';

@RoutePage()
class KnowledgeBasePage extends ConsumerStatefulWidget {
  const KnowledgeBasePage({super.key});

  @override
  ConsumerState<KnowledgeBasePage> createState() => _KnowledgeBasePageState();
}

class _KnowledgeBasePageState extends ConsumerState<KnowledgeBasePage> {
  bool _isHistoryOpen = false;

  void _toggleHistory() {
    setState(() {
      _isHistoryOpen = !_isHistoryOpen;
    });
  }

  void _closeHistory() {
    if (_isHistoryOpen) {
      setState(() {
        _isHistoryOpen = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final documentState = ref.watch(resourcesControllerProvider);
    final documentInDepartmentState = ref.watch(
      resourcesInDepartmentsControllerProvider,
    );
    final documentInTicketState = ref.watch(
      resourcesInTicketsControllerProvider,
    );
    return Scaffold(
      backgroundColor: const Color(0xffF8F9FF),
      body: BasePage(
        title: 'Knowledge Base Repository',
        description:
            'Manage vectorized documents and interact with the semantic search agent.',
        child: Container(
          color: Colors.transparent,
          child: SingleChildScrollView(
            child: StaggeredGrid.count(
              crossAxisCount: 8,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 5,
                  mainAxisCellCount: 4,
                  child: OverviewContainer(
                    title: 'Agent Chat',
                    icon: Assets.lib.infrastructure.assets.icons.sidebarRight,
                    iconSize: 20,
                    onTap: _toggleHistory,
                    isEndDrawerOpen: _isHistoryOpen,
                    onCloseEndDrawer: _closeHistory,
                    endDrawer: AgentChatHistoryDrawer(
                      onClose: _closeHistory,
                    ),
                    child: const AgentChat(),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 4,
                  child: OverviewContainer(
                    title: 'Indexed Data Sources',
                    icon: Assets.lib.infrastructure.assets.icons.uploadFile,
                    iconSize: 24,
                    onTap: () async {
                      final resourcesController = ref.read(
                        resourcesControllerProvider.notifier,
                      );
                      resourcesController.uploadDocument();
                    },
                    tabs: const [
                      Tab(text: 'Public'),
                      Tab(text: 'Department'),
                      Tab(text: 'Ticket'),
                    ],
                    tabViews: [
                      DocumentTable(state: documentState),
                      DocumentTable(state: documentInDepartmentState),
                      DocumentTable(state: documentInTicketState),
                    ],
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

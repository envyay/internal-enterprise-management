import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/agent_chat_controller.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/resources_controller.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/resources_in_departments_controller.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/resources_in_tickets_controller.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/widgets/agent_chat.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/widgets/document_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../infrastructure/assets/gen/assets.gen.dart';
import '../../widgets/base_page.dart';
import '../../widgets/overview_container.dart';

@RoutePage()
class KnowledgeBasePage extends ConsumerWidget {
  const KnowledgeBasePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
        description: 'Manage vectorized documents and interact with the semantic search agent.',
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
                  mainAxisCellCount: 4,
                  child: OverviewContainer(
                    title: 'Indexed Data Sources',
                    icon: Assets.lib.infrastructure.assets.icons.word,
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
                StaggeredGridTile.count(
                  crossAxisCellCount: 3,
                  mainAxisCellCount: 4,
                  child: OverviewContainer(
                    title: 'KB Agent',
                    icon: Assets.lib.infrastructure.assets.icons.create,
                    onTap: () {
                      ref
                          .read(agentChatControllerProvider.notifier)
                          .resetChat();
                    },
                    child: AgentChat(),
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

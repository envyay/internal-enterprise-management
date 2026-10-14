import 'package:auto_route/annotations.dart';
import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/resources_controller.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/resources_in_departments_controller.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/controllers/resources_in_tickets_controller.dart';
import 'package:enterprise_management/presentation/pages/resources_and_agent/widgets/document_table.dart';
import 'package:enterprise_management/presentation/pages/task/controllers/documents_in_ticket_controller.dart';
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
    final documentInDepartmentState = ref.watch(resourcesInDepartmentsControllerProvider);
    final documentInTicketState = ref.watch(resourcesInTicketsControllerProvider);
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
                      final resourcesController = ref.read(resourcesControllerProvider.notifier);
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
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            reverse: true,
                            padding: .only(bottom: 32),
                            itemBuilder: (context, index) {
                              return Container(
                                padding: .symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    Container(
                                      padding: .symmetric(vertical: 24),
                                      child: Row(
                                        mainAxisAlignment: .end,
                                        children: [
                                          Container(
                                            padding: .symmetric(
                                              vertical: 12,
                                              horizontal: 16,
                                            ),
                                            constraints: BoxConstraints(
                                              maxWidth: 400,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Color(0xff003366),
                                              borderRadius: .only(
                                                topLeft: Radius.circular(20),
                                                bottomRight: Radius.circular(
                                                  20,
                                                ),
                                                bottomLeft: Radius.circular(20),
                                              ),
                                            ),
                                            child: Text(
                                              'dataaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                                              style: TextStyle(
                                                color: Color(0xffFFFFFF),
                                                fontSize: 14,
                                                fontWeight: .w400,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: .start,
                                      children: [
                                        Container(
                                          padding: .symmetric(
                                            vertical: 12,
                                            horizontal: 16,
                                          ),
                                          constraints: BoxConstraints(maxWidth: 400),
                                          decoration: BoxDecoration(
                                            color: Color(0xffE5EEFF),
                                            borderRadius: .only(
                                              topRight: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                              bottomLeft: Radius.circular(20),
                                            ),
                                          ),
                                          child: Text(
                                            'dataaaaaaaaaaaaaaaaaaaaaaaa',
                                            style: TextStyle(
                                              color: Color(0xff0B1C30),
                                              fontWeight: .w400,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Container(
                          padding: .symmetric(vertical: 16, horizontal: 16),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                width: 1,
                                color: Color(0xffC3C6D1),
                              ),
                            ),
                          ),
                          child: Column(
                            spacing: 12,
                            children: [
                              TextField(
                                maxLines: 5,
                                minLines: 1,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Ask anything about your documents',
                                  prefixIcon: Container(
                                    padding: .all(8),
                                    margin: .only(left: 8, right: 4),
                                    height: 32,
                                    width: 38,
                                    child: Assets.lib.infrastructure.assets.icons.attachment.svg(),
                                  ),
                                  suffixIcon: Container(
                                    padding: .all(8),
                                    margin: .only(
                                      left: 4,
                                      right: 8,
                                      top: 8,
                                      bottom: 8,
                                    ),
                                    height: 32,
                                    width: 38,
                                    decoration: BoxDecoration(
                                      color: Color(0xff001E40),
                                      borderRadius: BorderRadius.circular(4),
                                    ),

                                    child: Assets.lib.infrastructure.assets.icons.send.svg(),
                                  ),
                                ),
                              ),
                              Text(
                                'AI can make mistakes. Verify critical information.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../infrastructure/assets/gen/assets.gen.dart';
import '../widgets/base_page.dart';
import '../widgets/overview_container.dart';

@RoutePage()
class KnowledgeBasePage extends StatelessWidget {
  const KnowledgeBasePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    child: Column(
                      children: [
                        Container(
                          padding: .symmetric(horizontal: 16),
                          child: Table(
                            border: TableBorder(
                              bottom: BorderSide(
                                color: Color(0xffC3C6D1),
                                width: 1.5,
                              ),
                            ),
                            columnWidths: {
                              0: FixedColumnWidth(500),
                              1: FlexColumnWidth(),
                              2: FlexColumnWidth(),
                              3: FlexColumnWidth(),
                            },
                            children: [
                              TableRow(
                                children: [
                                  Container(
                                    padding: .symmetric(vertical: 16),
                                    child: Text(
                                      'File name',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: .symmetric(vertical: 16),
                                    child: Text(
                                      'Status',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: .symmetric(vertical: 16),
                                    alignment: .centerRight,
                                    child: Text(
                                      'Date modified',
                                      style: TextStyle(
                                        color: Color(0xff43474F),
                                        fontWeight: .w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 100,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: .symmetric(horizontal: 16),
                                child: Table(
                                  border: (index < (100 - 1))
                                      ? TableBorder(
                                          bottom: BorderSide(
                                            color: Color(0xffC3C6D1),
                                          ),
                                        )
                                      : null,
                                  columnWidths: {
                                    0: FixedColumnWidth(500),
                                    1: FlexColumnWidth(),
                                    2: FlexColumnWidth(),
                                  },
                                  defaultVerticalAlignment: .middle,
                                  children: [
                                    TableRow(
                                      children: [
                                        Container(
                                          padding: .symmetric(vertical: 12),
                                          child: Row(
                                            spacing: 12,
                                            children: [
                                              Assets.lib.infrastructure.assets.icons.pdf.svg(),
                                              Column(
                                                crossAxisAlignment: .start,
                                                children: [
                                                  Text(
                                                    'Q3_Financial_Report_Final.pdf',
                                                    style: TextStyle(
                                                      color: Color(0xff0B1C30),
                                                      fontWeight: .w500,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  Row(
                                                    spacing: 10,
                                                    children: [
                                                      Text(
                                                        '2.4 MB',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xff43474F,
                                                          ),
                                                          fontSize: 12,
                                                          fontWeight: .w400,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 5,
                                                        width: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                              color: Color(
                                                                0xff43474F,
                                                              ),
                                                              borderRadius:
                                                                  .circular(12),
                                                            ),
                                                      ),
                                                      Text(
                                                        'RAG Indexed',
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xff43474F,
                                                          ),
                                                          fontSize: 12,
                                                          fontWeight: .w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: .symmetric(
                                                vertical: 4,
                                                horizontal: 10,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Color(0xff6CF8BB),
                                                borderRadius: .circular(12),
                                              ),
                                              child: Row(
                                                mainAxisSize: .min,
                                                spacing: 6,
                                                children: [
                                                  Container(
                                                    height: 5,
                                                    width: 5,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff43474F),
                                                      borderRadius: .circular(
                                                        12,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Active',
                                                    style: TextStyle(
                                                      color: Color(0xff00714D),
                                                      fontWeight: .w600,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          padding: .symmetric(
                                            horizontal: 12,
                                            vertical: 12,
                                          ),
                                          alignment: .centerRight,
                                          child: Text('$index'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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

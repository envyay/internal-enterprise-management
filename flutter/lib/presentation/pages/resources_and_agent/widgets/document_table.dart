import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class DocumentTable extends StatelessWidget {
  const DocumentTable({super.key, required this.state});

  final AsyncValue<List<Document>> state;

  static const _headerStyle = TextStyle(
    color: Color(0xff43474F),
    fontWeight: .w600,
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: .symmetric(horizontal: 16),
          child: Table(
            border: TableBorder(
              bottom: BorderSide(color: Color(0xffC3C6D1), width: 1.5),
            ),
            columnWidths: {
              0: FixedColumnWidth(500),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
            },
            children: [
              TableRow(
                children: [
                  Container(
                    padding: .symmetric(vertical: 16),
                    child: Text('File name', style: _headerStyle),
                  ),
                  Container(
                    padding: .symmetric(vertical: 16),
                    child: Text('Status', style: _headerStyle),
                  ),
                  Container(
                    padding: .symmetric(vertical: 16),
                    alignment: .centerRight,
                    child: Text('Date modified', style: _headerStyle),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: state.when(
            data: (documents) {
              if (documents.isEmpty) {
                return const Center(child: Text('No documents'));
              }
              return ListView.builder(
                itemCount: documents.length,
                itemBuilder: (context, index) {
                  final doc = documents[index];
                  return Container(
                    padding: .symmetric(horizontal: 16),
                    child: Table(
                      border: (index < documents.length - 1)
                          ? TableBorder(
                        bottom: BorderSide(color: Color(0xffC3C6D1)),
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
                                  fileIcon(doc.extension).svg(),
                                  Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        doc.name,
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
                                            doc.size.toString(),
                                            style: TextStyle(
                                              color: Color(0xff43474F),
                                              fontSize: 12,
                                              fontWeight: .w400,
                                            ),
                                          ),
                                          Container(
                                            height: 5,
                                            width: 5,
                                            decoration: BoxDecoration(
                                              color: Color(0xff43474F),
                                              borderRadius: .circular(12),
                                            ),
                                          ),
                                          Text(
                                            'RAG Indexed',
                                            style: TextStyle(
                                              color: Color(0xff43474F),
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
                                          borderRadius: .circular(12),
                                        ),
                                      ),
                                      Text(
                                        doc.status == 1 ? 'Active' : 'InActive',
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
                              padding: .symmetric(horizontal: 12, vertical: 12),
                              alignment: .centerRight,
                              child: Text('$index'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            error: (error, stackTrace) => Center(child: Text('Error: $error')),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
        ),
      ],
    );
  }
}

SvgGenImage fileIcon(String? extension) {
  final icons = Assets.lib.infrastructure.assets.icons;
  switch (extension?.toLowerCase().replaceAll('.', '')) {
    case 'pdf':
      return icons.pdf;
    case 'doc':
    case 'docx':
      return icons.word;
    case 'xls':
    case 'xlsx':
      return icons.xlsx;
    default:
      return icons.attachment;
  }
}

import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class DocumentTable extends StatelessWidget {
  const DocumentTable({super.key, required this.state, required this.onOpenFile});

  final AsyncValue<List<Document>> state;
  final void Function(Document) onOpenFile;

  static const _headerStyle = TextStyle(
    color: Color(0xff43474F),
    fontWeight: FontWeight.w600,
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Table(
            border: const TableBorder(
              bottom: BorderSide(color: Color(0xffC3C6D1), width: 1.5),
            ),
            columnWidths: const {
              0: FlexColumnWidth(),
            },
            children: const [
              TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text('File name', style: _headerStyle),
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
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Table(
                      border: (index < documents.length - 1)
                          ? const TableBorder(
                              bottom: BorderSide(color: Color(0xffC3C6D1)),
                            )
                          : null,
                      columnWidths: const {
                        0: FlexColumnWidth(),
                      },
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      children: [
                        TableRow(
                          children: [
                            Material(
                              type: .transparency,
                              child: InkWell(
                                onTap: () {
                                  onOpenFile.call(doc);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 12),
                                  child: Row(
                                    spacing: 12,
                                    children: [
                                      fileIcon(doc.extension).svg(),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              doc.name,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                color: Color(0xff0B1C30),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Row(
                                              spacing: 10,
                                              children: [
                                                Text(
                                                  _formatSize(doc.size),
                                                  style: const TextStyle(
                                                    color: Color(0xff43474F),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Container(
                                                  height: 5,
                                                  width: 5,
                                                  decoration: BoxDecoration(
                                                    color: const Color(0xff43474F),
                                                    borderRadius: BorderRadius.circular(12),
                                                  ),
                                                ),
                                                Text(
                                                  _formatDate(doc.createdAt),
                                                  style: const TextStyle(
                                                    color: Color(0xff43474F),
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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

String _formatSize(int bytes) {
  final kb = bytes / 1024;
  return '${kb.toStringAsFixed(1)} KB';
}

String _formatDate(DateTime? date) {
  if (date == null) return '--';
  final target = date.toLocal();
  final day = target.day.toString().padLeft(2, '0');
  final month = target.month.toString().padLeft(2, '0');
  final year = target.year;
  final hour = target.hour.toString().padLeft(2, '0');
  final minute = target.minute.toString().padLeft(2, '0');
  return '$hour:$minute $day/$month/$year';
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

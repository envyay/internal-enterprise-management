import 'dart:io';

import 'package:enterprise_management/domain/aggregates/document/document.dart';
import 'package:enterprise_management/infrastructure/assets/gen/assets.gen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class DocumentTableInTicket extends ConsumerWidget {
  const DocumentTableInTicket({super.key, required this.state});

  final AsyncValue<List<Document>> state;

  static const _headerStyle = TextStyle(
    color: Color(0xff43474F),
    fontWeight: .w600,
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: .min,
      children: [
        Container(
          padding: .symmetric(horizontal: 16),
          child: Table(
            border: TableBorder(
              bottom: BorderSide(color: Color(0xffC3C6D1), width: 1.5),
            ),
            columnWidths: {
              0: FlexColumnWidth(3),
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
                    child: Text('Size', style: _headerStyle),
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
        state.when(
          data: (documents) {
            if (documents.isEmpty) {
              return const Padding(
                padding: EdgeInsets.all(16),
                child: Center(child: Text('No documents')),
              );
            }
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
                      0: FlexColumnWidth(3),
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
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(
                                        doc.name,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Color(0xff0B1C30),
                                          fontWeight: .w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            _formatSize(doc.size),
                            style: TextStyle(
                              color: Color(0xff43474F),
                              fontSize: 14,
                              fontWeight: .w400,
                            ),
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
          loading: () => const Padding(
            padding: EdgeInsets.all(16),
            child: Center(child: CircularProgressIndicator()),
          ),
        ),
      ],
    );
  }
}

String _formatSize(int? bytes) {
  if (bytes == null) return '';
  if (bytes < 1024) return '$bytes B';
  if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
  return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
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

import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'document.mapper.dart';
@MappableClass()
class Document extends AggregateRoot<String> with DocumentMappable {
  Document({
    required super.id,
    required this.referenceId,
    required this.name,
    required this.bucketName,
    required this.objectName,
    required this.size,
    required this.status,
    required this.extension,
  });

  final String referenceId;
  final String name;
  final String bucketName;
  final String objectName;
  final int size;
  final int status;
  final String extension;
}

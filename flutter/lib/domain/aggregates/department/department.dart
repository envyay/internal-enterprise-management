import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'department.mapper.dart';

@MappableClass()
class Department extends AggregateRoot<String> with DepartmentMappable {
  Department({required super.id, required this.name});

  final String name;
}
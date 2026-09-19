import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'project.mapper.dart';
@MappableClass()
class Project extends AggregateRoot<String> with ProjectMappable{
  Project({required super.id, required this.name, required this.description, this.isActive = false, required this.code});

  final String name;
  final String description;
  final String code;
  final bool isActive;
}
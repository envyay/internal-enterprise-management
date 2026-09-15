import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'user_group.mapper.dart';

@MappableClass()
class UserGroup extends AggregateRoot<String> with UserGroupMappable {
  UserGroup({required super.id, required this.name, this.isActive = false});

  final String name;
  final bool isActive;
}
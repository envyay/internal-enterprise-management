import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'department.mapper.dart';

@MappableClass()
class Department extends AggregateRoot<String> with DepartmentMappable {
  Department({
    required super.id,
    required this.name,
    this.isActive = false,
    required this.users,
  });

  final String name;
  final List<User> users;
  final bool isActive;
}

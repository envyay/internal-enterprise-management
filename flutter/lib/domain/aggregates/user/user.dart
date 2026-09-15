import 'package:dart_mappable/dart_mappable.dart';
import 'package:enterprise_management/shared_kernel/aggregate/aggregate_root.dart';

part 'user.mapper.dart';
@MappableClass()
class User extends AggregateRoot<String> with UserMappable{
  User({required super.id, required this.fullName});

  final String fullName;
}
import 'package:enterprise_management/domain/aggregates/department/department.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/set_users_in_department.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/remove_user_from_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/department_service/department_remote_data_source.dart';

abstract interface class IDepartmentRepository {
  Future<List<Department>> getDepartments();

  Future<Department?> getDepartmentById({required String id});

  Future<String> createDepartment({required String name});

  Future<bool> updateDepartmentById({required String id, required String name});

  Future<bool?> deleteDepartmentById({required String id});

  Future<bool> setUsersInDepartment({required String id, required List<String> userIds});

}

class DepartmentRepository implements IDepartmentRepository {
  const DepartmentRepository({required this._departmentRemoteDataSource});

  final DepartmentRemoteDataSource _departmentRemoteDataSource;

  @override
  Future<List<Department>> getDepartments() async {
    final res = await _departmentRemoteDataSource.getDepartments();
    return res.data.map((item) => item.toAggregate()).toList();
  }

  @override
  Future<bool?> deleteDepartmentById({required String id}) async {
    final res = await _departmentRemoteDataSource.deleteDepartmentById(id);
    return res.data;
  }

  @override
  Future<String> createDepartment({required String name}) async {
    final res = await _departmentRemoteDataSource.createDepartment(CreateDepartmentDto(name: name));
    return res.data;
  }

  @override
  Future<Department?> getDepartmentById({required String id}) async {
    final res = await _departmentRemoteDataSource.getDepartmentById(id);
    return res.data.toAggregate();
  }

  @override
  Future<bool> updateDepartmentById({required String id, required String name}) async {
    final res = await _departmentRemoteDataSource.updateDepartmentById(UpdateDepartmentDto(id: id, name: name));
    return res.data;
  }

  @override
  Future<bool> setUsersInDepartment({required String id, required List<String> userIds}) async {
    final res = await _departmentRemoteDataSource.setUsersInDepartment(SetUsersInDepartmentDto(id: id, userIds: userIds));
    return res.data;
  }
}


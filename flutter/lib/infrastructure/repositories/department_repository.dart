import 'package:enterprise_management/domain/aggregates/department/department.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/department_service/department_remote_data_source.dart';

abstract interface class IDepartmentRepository {
  Future<List<Department>> getDepartments();

  Future<DepartmentDto?> getDepartmentById({required String id});

  Future<String> createDepartment({required String name});

  Future<bool> updateDepartmentById({required String id, required String name});

  Future<bool?> deleteDepartmentById({required String id});
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
    final res = await _departmentRemoteDataSource.deleteDepartmentById(DeleteDepartmentDto(id: id));
    return res.data;
  }

  @override
  Future<String> createDepartment({required String name}) async {
    final res = await _departmentRemoteDataSource.createDepartment(CreateDepartmentDto(name: name));
    return res.data;
  }

  @override
  Future<DepartmentDto?> getDepartmentById({required String id}) {
    // TODO: implement getDepartmentById
    throw UnimplementedError();
  }

  @override
  Future<bool> updateDepartmentById({required String id, required String name}) async {
    final res = await _departmentRemoteDataSource.updateDepartmentById(UpdateDepartmentDto(id: id, name: name));
    return res.data;
  }
}


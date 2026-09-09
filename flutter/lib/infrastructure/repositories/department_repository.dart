import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/department_service/department_remote_data_source.dart';

abstract interface class IDepartmentRepository {
  Future<List<DepartmentDto>> getDepartments();

  Future<DepartmentDto?> getDepartmentById({required String id});

  Future<DepartmentDto> createDepartment({required String name});

  Future<bool> updateDepartmentById({required String id, required String name});

  Future<bool?> deleteDepartmentById({required String id});
}

class DepartmentRepository implements IDepartmentRepository {
  const DepartmentRepository({required this._departmentRemoteDataSource});

  final DepartmentRemoteDataSource _departmentRemoteDataSource;

  @override
  Future<List<DepartmentDto>> getDepartments() async {
    final res = await _departmentRemoteDataSource.getDepartments();
    return res.data;
  }

  @override
  Future<bool?> deleteDepartmentById({required String id}) async {
    final res = await _departmentRemoteDataSource.deleteDepartmentById(DeleteDepartmentDto(id: id));
    return res.data;
  }

  @override
  Future<DepartmentDto> createDepartment({required String name}) async {
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


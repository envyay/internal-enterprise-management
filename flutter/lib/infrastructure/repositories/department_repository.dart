import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/department_service/department_remote_data_source.dart';

abstract interface class IDepartmentRepository {
  Future<List<DepartmentDto>> getDepartments();

  Future<DepartmentDto?> getDepartmentById({required String id});

  Future<DepartmentDto?> createDepartment({required String name});

  Future<bool?> updateDepartmentById({required String id});

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
  Future<bool?> deleteDepartmentById({required String id}) {
    // TODO: implement deleteDepartmentById
    throw UnimplementedError();
  }

  @override
  Future<DepartmentDto?> createDepartment({required String name}) {
    // TODO: implement createDepartment
    throw UnimplementedError();
  }

  @override
  Future<DepartmentDto?> getDepartmentById({required String id}) {
    // TODO: implement getDepartmentById
    throw UnimplementedError();
  }

  @override
  Future<bool?> updateDepartmentById({required String id}) {
    // TODO: implement updateDepartmentById
    throw UnimplementedError();
  }
}


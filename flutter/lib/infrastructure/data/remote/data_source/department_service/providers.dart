
import 'package:enterprise_management/infrastructure/data/remote/data_source/department_service/department_remote_data_source.dart';
import 'package:enterprise_management/infrastructure/data/remote/http_clients/app_dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

String _baseUrl(String path) {
  return '/api/$path/';
}

@Riverpod(keepAlive: true)
DepartmentRemoteDataSource departmentRemote(Ref ref) {
  final dio = ref.watch(appDioProvider);
  return DepartmentRemoteDataSource(dio, baseUrl: _baseUrl('Departments'));
}
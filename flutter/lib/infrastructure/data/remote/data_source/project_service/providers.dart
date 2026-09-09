import 'package:enterprise_management/infrastructure/data/remote/data_source/project_service/project_remote_data_source.dart';
import 'package:enterprise_management/infrastructure/data/remote/http_clients/app_dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';
String _baseUrl(String path) {
  return '/api/$path/';
}

@Riverpod(keepAlive: true)
ProjectRemoteDataSource projectRemote(Ref ref){
  final dio = ref.watch(appDioProvider);
  return ProjectRemoteDataSource(dio, baseUrl: _baseUrl('Projects'));
}
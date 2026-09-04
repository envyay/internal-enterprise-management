
import 'package:enterprise_management/infrastructure/data/remote/data_source/user_service/user_remote_data_source.dart';
import 'package:enterprise_management/infrastructure/data/remote/http_clients/interceptors/app_dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

String _baseUrl(String path) {
  return '/api/$path/';
}

@Riverpod(keepAlive: true)
UserRemoteDataSource userRemote(Ref ref) {
  final dio = ref.watch(appDioProvider);
  return UserRemoteDataSource(dio, baseUrl: _baseUrl('Users'));
}
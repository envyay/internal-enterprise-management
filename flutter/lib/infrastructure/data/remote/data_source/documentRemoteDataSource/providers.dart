
import 'package:enterprise_management/infrastructure/data/remote/data_source/documentRemoteDataSource/document_remote_data_source.dart';
import 'package:enterprise_management/infrastructure/data/remote/http_clients/app_dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

String _baseUrl(String path) {
  return '/api/$path/';
}

@Riverpod(keepAlive: true)
DocumentRemoteDataSource documentRemote(Ref ref) {
  final dio = ref.watch(appDioProvider);
  return DocumentRemoteDataSource(dio, baseUrl: _baseUrl('Departments'));
}
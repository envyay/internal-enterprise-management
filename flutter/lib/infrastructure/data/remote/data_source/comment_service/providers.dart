
import 'package:enterprise_management/infrastructure/data/remote/data_source/comment_service/comment_remote_data_source.dart';
import 'package:enterprise_management/infrastructure/data/remote/http_clients/app_dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

String _baseUrl(String path) {
  return '/api/$path/';
}

@Riverpod(keepAlive: true)
CommentRemoteDataSource commentRemote(Ref ref) {
  final dio = ref.watch(appDioProvider);
  return CommentRemoteDataSource(dio, baseUrl: _baseUrl('Comments'));
}
import 'package:enterprise_management/infrastructure/data/remote/data_source/user_group_service/user_group_remote_data_source.dart';
import 'package:enterprise_management/infrastructure/data/remote/http_clients/app_dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

String _baseUrl(String path){
  return 'api/$path/';
}

@Riverpod(keepAlive: true)
UserGroupRemoteDataSource userGroupRemote(Ref ref){
  final dio = ref.watch(appDioProvider);
  return UserGroupRemoteDataSource(dio, baseUrl: _baseUrl('UserGroups'));
}
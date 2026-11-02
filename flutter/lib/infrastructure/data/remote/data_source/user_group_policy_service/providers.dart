import 'package:enterprise_management/infrastructure/data/remote/data_source/user_group_policy_service/user_group_policy_remote_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../http_clients/app_dio.dart';

part 'providers.g.dart';

String _baseUrl(String path) {
  return '/api/$path/';
}

@Riverpod(keepAlive: true)
UserGroupPolicyRemoteDataSource userGroupPolicyRemote(Ref ref) {
  final dio = ref.watch(appDioProvider);
  return UserGroupPolicyRemoteDataSource(dio, baseUrl: _baseUrl('UserGroupPolicies'));
}
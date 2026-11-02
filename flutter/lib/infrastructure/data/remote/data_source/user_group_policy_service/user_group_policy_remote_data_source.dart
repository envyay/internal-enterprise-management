import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/user_group_policies/user_group_policy_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'user_group_policy_remote_data_source.g.dart';
@RestApi()
abstract class UserGroupPolicyRemoteDataSource {
  factory UserGroupPolicyRemoteDataSource(Dio dio, {String? baseUrl}) = _UserGroupPolicyRemoteDataSource;

  @GET('GetAll')
  Future<ApiResponse<List<UserGroupPolicyDto>>> getPolicies();

}
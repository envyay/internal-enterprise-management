import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/add_users_to_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/remove_user_from_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/set_policies_in_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/set_users_in_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_user_group_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/user_groups/user_groups_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'user_group_remote_data_source.g.dart';
@RestApi()
abstract class UserGroupRemoteDataSource {
  factory UserGroupRemoteDataSource(Dio dio, {String? baseUrl}) = _UserGroupRemoteDataSource;

  @GET('GetAll')
  Future<ApiResponse<List<UserGroupDto>>> getUserGroups();

  @GET('{id}')
  Future<ApiResponse<UserGroupDto>> getUserGroupById(@Path('id') String id);

  @GET('{id}/Users')
  Future<ApiResponse<List<UserDto>>> getUsersByUserGroupId(@Path('id') String id);

  @POST('Create')
  Future<ApiResponse<UserGroupDto>> createUserGroup(@Body() CreateUserGroupDto body);

  @PUT('Update')
  Future<ApiResponse<bool>> updateUserGroupById(@Body() UpdateUserGroupDto body);

  @PUT('SetUsers')
  Future<ApiResponse<bool>> setUsersInUserGroup(@Body() SetUsersInUserGroupDto body);

  @PUT('SetPolicies')
  Future<ApiResponse<bool>> setPoliciesInUserGroup(@Body() SetPoliciesInUserGroupDto body);

  @DELETE('{id}')
  Future<ApiResponse<bool>> deleteUserGroupById(@Path('id') String id);

  @POST('AddUsers')
  Future<ApiResponse<bool>> addUsersToUserGroup(@Body() AddUsersToUserGroupDto body);
  
  @DELETE('RemoveUser')
  Future<ApiResponse<bool>> removeUserFromUserGroup(@Body() RemoveUserFromUserGroupDto body);
}
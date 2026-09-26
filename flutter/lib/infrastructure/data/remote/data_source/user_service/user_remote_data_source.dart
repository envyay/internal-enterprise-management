import 'package:dio/dio.dart';
import 'package:enterprise_management/domain/aggregates/user/user.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_user_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/login_request_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/login_verify_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_user_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/users/user_dto.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'user_remote_data_source.g.dart';

@RestApi()
abstract class UserRemoteDataSource {
  factory UserRemoteDataSource(Dio dio, {String? baseUrl}) = _UserRemoteDataSource;
  
  @GET('GetAll')
  Future<ApiResponse<List<UserDto>>> getUsers();

  @GET('{id}/Projects')
  Future<ApiResponse<List<ProjectDto>?>> getProjectsByUserId(@Path('id') String id);

  @POST('Create')
  Future<ApiResponse<String>> createUser(@Body() CreateUserDto body);

  @PUT('Update')
  Future<ApiResponse<bool>> updateUser(@Body() UpdateUserDto body);

  @DELETE('{id}')
  Future<ApiResponse<bool>> deleteUser(@Path('id') String id);

  @POST('LoginRequest')
  Future<ApiResponse<bool?>> loginRequest(@Body() LoginRequestDto body);

  @POST('LoginVerify')
  Future<ApiResponse<String?>> loginVerify(@Body() LoginVerifyDto body);
}
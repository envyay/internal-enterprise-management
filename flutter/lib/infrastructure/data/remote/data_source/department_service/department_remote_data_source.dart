import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/set_users_in_department.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/remove_user_from_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/departments/department_dto.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'department_remote_data_source.g.dart';
@RestApi()
abstract class DepartmentRemoteDataSource {
  factory DepartmentRemoteDataSource(Dio dio, {String? baseUrl}) = _DepartmentRemoteDataSource;

  @GET('GetAll')
  Future<ApiResponse<List<DepartmentDto>>> getDepartments();
  
  @GET('{id}')
  Future<ApiResponse<DepartmentDto>> getDepartmentById(@Path('id') String id);

  @POST('Create')
  Future<ApiResponse<String>> createDepartment(@Body() CreateDepartmentDto body);

  @PUT('Update')
  Future<ApiResponse<bool>> updateDepartmentById(@Body() UpdateDepartmentDto body);

  @DELETE('{id}')
  Future<ApiResponse<bool?>> deleteDepartmentById(@Path('id') String id);

  @PUT('SetUsers')
  Future<ApiResponse<bool>> setUsersInDepartment(@Body() SetUsersInDepartmentDto body);
}
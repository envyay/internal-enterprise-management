import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_department_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_department_dto.dart';
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

  @POST('Create')
  Future<ApiResponse<DepartmentDto>> createDepartment(@Body() CreateDepartmentDto body);

  @PUT('Update')
  Future<ApiResponse<bool>> updateDepartmentById(@Body() UpdateDepartmentDto body);

  @DELETE('Delete/{id}')
  Future<ApiResponse<bool>> deleteDepartmentById(@Body() DeleteDepartmentDto body);

}
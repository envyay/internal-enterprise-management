import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_responses/api_response.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'project_remote_data_source.g.dart';

@RestApi()
abstract class ProjectRemoteDataSource {
  factory ProjectRemoteDataSource(Dio dio, {String? baseUrl}) =
      _ProjectRemoteDataSource;

  @GET('GetAll')
  Future<ApiResponse<List<ProjectDto?>>> getProjects();

  @POST('Create')
  Future<ApiResponse<ProjectDto>> createProject(@Body() CreateProjectDto body);

  @PUT('Update')
  Future<ApiResponse<bool>> updateProject(@Body() UpdateProjectDto body);

  @DELETE('Delete/{id}')
  Future<ApiResponse<bool>> deleteProject(@Body() DeleteProjectDto body);
}

import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/project_service/project_remote_data_source.dart';

abstract class IProjectRepository {
  Future<List<ProjectDto?>> getProjects();

  Future<ProjectDto?> getProjectById({required String id});

  Future<ProjectDto> createProject({required String name});

  Future<bool> updateProject({required String id, required String name});

  Future<bool> deleteProject({required String id});
}

class ProjectRepository implements IProjectRepository {
  const ProjectRepository({required this._projectRemoteDataSource});
  final ProjectRemoteDataSource _projectRemoteDataSource;
  @override
  Future<ProjectDto> createProject({required String name}) async {
    final res = await _projectRemoteDataSource.createProject(CreateProjectDto(name: name));
    return res.data;
  }

  @override
  Future<bool> deleteProject({required String id}) async {
    final res = await _projectRemoteDataSource.deleteProject(DeleteProjectDto(id: id));
    return res.data;
  }

  @override
  Future<ProjectDto?> getProjectById({required String id}) {
    // TODO: implement getProjectById
    throw UnimplementedError();
  }

  @override
  Future<List<ProjectDto?>> getProjects() async {
    final res = await _projectRemoteDataSource.getProjects();
    return res.data;
  }

  @override
  Future<bool> updateProject({required String id, required String name}) async {
    final res = await _projectRemoteDataSource.updateProject(UpdateProjectDto(id: id, name: name));
    return res.data;
  }
}

import 'package:enterprise_management/domain/aggregates/project/project.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/create_project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/delete_project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/update_project_dto.dart';
import 'package:enterprise_management/infrastructure/data/dtos/projects/project_dto.dart';
import 'package:enterprise_management/infrastructure/data/remote/data_source/project_service/project_remote_data_source.dart';

abstract class IProjectRepository {
  Future<List<Project>> getProjects();

  Future<Project?> getProjectById({required String id});

  Future<String> createProject({required String name, required String description, required String code});

  Future<bool> updateProject({required String id, required String name, required String description, required String code});

  Future<bool> deleteProject({required String id});
}

class ProjectRepository implements IProjectRepository {
  const ProjectRepository({required this._projectRemoteDataSource});
  final ProjectRemoteDataSource _projectRemoteDataSource;
  @override
  Future<String> createProject({required String name, required String description, required String code}) async {
    final res = await _projectRemoteDataSource.createProject(CreateProjectDto(name: name, description: description, code: code));
    return res.data;
  }

  @override
  Future<bool> deleteProject({required String id}) async {
    final res = await _projectRemoteDataSource.deleteProject(id);
    return res.data;
  }

  @override
  Future<Project?> getProjectById({required String id}) async {
    final res = await _projectRemoteDataSource.getProjectById(id);
    return res.data?.map((item) => item.toAggregate());
  }

  @override
  Future<List<Project>> getProjects() async {
    final res = await _projectRemoteDataSource.getProjects();
    return res.data.map((item) => item.toAggregate()).toList();
  }

  @override
  Future<bool> updateProject({required String id, required String name, required String description, required String code}) async {
    final res = await _projectRemoteDataSource.updateProject(UpdateProjectDto(id: id, name: name, description: description, code: code));
    return res.data;
  }
}

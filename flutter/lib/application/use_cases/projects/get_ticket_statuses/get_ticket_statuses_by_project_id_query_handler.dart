import 'package:enterprise_management/application/use_cases/projects/get_ticket_statuses/get_ticket_statuses_by_project_id_query.dart';
import 'package:enterprise_management/domain/aggregates/ticket_status/ticket_status.dart';
import 'package:enterprise_management/infrastructure/repositories/project_repository.dart';
import 'package:enterprise_management/shared_kernel/cqrs/cqrs.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class GetTicketStatusesByProjectIdQueryHandler extends IQueryHandler<GetTicketStatusesByProjectIdQuery, List<TicketStatus>> {
  const GetTicketStatusesByProjectIdQueryHandler({required this._projectRepository});
  final IProjectRepository _projectRepository;

  @override
  Future<Result<List<TicketStatus>>> handle(GetTicketStatusesByProjectIdQuery query) async {
    final res = await _projectRepository.getTicketStatusesByProjectId(projectId: query.projectId);
    return Result.success(res);
  }
}
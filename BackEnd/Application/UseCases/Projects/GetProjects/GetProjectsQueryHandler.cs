using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Projects.GetProjects;

public class GetProjectsQueryHandler(IRepository<Project, Guid> projectRepository) : IRequestHandler<GetProjectsQuery, List<Project>>
{
    public async Task<List<Project>> Handle(GetProjectsQuery request, CancellationToken cancellationToken)
    {
        var project = await projectRepository.GetAll(cancellationToken);
        return project;
    }
}
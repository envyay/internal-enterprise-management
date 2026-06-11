using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Projects.GetProjectById;

public class GetProjectByIdQueryHandler(IRepository<Project, Guid> projectRepository) : IRequestHandler<GetProjectByIdQuery, Project?>
{
    public async Task<Project?> Handle(GetProjectByIdQuery request, CancellationToken cancellationToken)
    {
        var project = await projectRepository.GetByIdAsync(request.Id, cancellationToken);
        return project;
    }
}
using Application.DTOs.Projects;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Users.GetProjectsByUserId;

public class GetProjectsByUserIdQueryHandler(IRepository<Project, Guid> projectRepository) : IRequestHandler<GetProjectsByUserIdQuery, List<ProjectDto>?>
{
    public async Task<List<ProjectDto>?> Handle(GetProjectsByUserIdQuery request, CancellationToken cancellationToken)
    {
        var projectsByUserId = await projectRepository
            .Where(p => p.Users.Any(u => u.Id == request.UserId))
            .Include(p => p.Users)
            .ToListAsync(cancellationToken);

        return projectsByUserId.Select(x => new ProjectDto
        {
            Id = x.Id,
            Name = x.Name,
        }).ToList();
    }
}
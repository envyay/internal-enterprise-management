using Application.DTOs.Projects;
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Users.GetProjectsByUserId;

public class GetProjectsByUserIdQueryHandler(IRepository<Project, Guid> projectRepository, IUserContextService userContextService) : IRequestHandler<GetProjectsByUserIdQuery, List<ProjectDto>?>
{
    public async Task<List<ProjectDto>?> Handle(GetProjectsByUserIdQuery request, CancellationToken cancellationToken)
    {
        var userId = userContextService.GetUserId();
        var projectsByUserId = await projectRepository
            .Where(p => p.Users.Any(u => u.Id == userId))
            .Include(p => p.Users)
            .ToListAsync(cancellationToken);

        return projectsByUserId.Select(x => new ProjectDto
        {
            Id = x.Id,
            Name = x.Name,
        }).ToList();
    }
}
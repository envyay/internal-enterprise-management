using Application.DTOs.Projects;
using Application.DTOs.TicketStatuses;
using Application.DTOs.Users;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Projects.GetProjectById;

public class GetProjectByIdQueryHandler(IRepository<Project, Guid> projectRepository)
    : IRequestHandler<GetProjectByIdQuery, ProjectDto?>
{
    public async Task<ProjectDto?> Handle(GetProjectByIdQuery request, CancellationToken cancellationToken)
    {
        // var project = await projectRepository.GetByIdAsync(request.Id, cancellationToken);
        var project = await projectRepository
            .Where(p => request.Id.Equals(p.Id))
            .Include(u => u.Users).Include(ts => ts.TicketStatuses)
            .FirstOrDefaultAsync(cancellationToken);
        if (project == null) return null;
        var dto = new ProjectDto
        {
            Id = project.Id,
            Name = project.Name,
            Description = project.Description,
            Code = project.Code,
            Status = project.Status,
            StartDate = project.StartDate,
            EndDate = project.EndDate,
            Users = project.Users.Select(x => new UserDto
            {
                Id = x.Id,
                Email = x.Email,
                FullName = x.FullName,
                Status = x.Status
            }).ToList(), TicketStatuses = project.TicketStatuses.Select(ts => new TicketStatusDto
            {
                Id = ts.Id,
                ProjectId = ts.ProjectId,
                Name = ts.Name
            }).ToList()
        };
        return dto;
    }
}
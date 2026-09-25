using Application.DTOs.Users;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Projects.GetUsersByProjectId;

public class GetUsersByProjectIdQueryHandler(IRepository<Project, Guid> projectRepository)
    : IRequestHandler<GetUsersByProjectIdQuery, List<UserDto>>
{
    public async Task<List<UserDto>> Handle(GetUsersByProjectIdQuery request, CancellationToken cancellationToken)
    {
        var users = await projectRepository.Where(p => p.Id.Equals(request.ProjectId)).SelectMany(p => p.Users).Select(u => new UserDto
        {
            Id = u.Id,
            FullName = u.FullName,
            Email = u.Email,
            Status = u.Status,
        }).ToListAsync(cancellationToken);

        return users;
    }
}
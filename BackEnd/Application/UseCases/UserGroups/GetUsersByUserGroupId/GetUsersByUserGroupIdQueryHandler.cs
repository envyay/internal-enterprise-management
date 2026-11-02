using Application.DTOs.Users;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.UserGroups.GetUsersByUserGroupId;

public class GetUsersByUserGroupIdQueryHandler(IRepository<UserGroup, Guid> userGroupRepository)
    : IRequestHandler<GetUsersByUserGroupIdQuery, List<UserDto>>
{
    public async Task<List<UserDto>> Handle(GetUsersByUserGroupIdQuery request, CancellationToken cancellationToken)
    {
        var users = await userGroupRepository
            .Where(p => p.Id.Equals(request.UserGroupId))
            .SelectMany(p => p.Users)
            .Select(u => new UserDto
            {
                Id = u.Id,
                FullName = u.FullName,
                Email = u.Email,
                Status = u.Status,
            }).ToListAsync(cancellationToken);
        return users;
    }
}
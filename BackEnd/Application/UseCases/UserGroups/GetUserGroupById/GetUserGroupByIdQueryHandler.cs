using Application.DTOs.UserGroupPolicies;
using Application.DTOs.UserGroups;
using Application.DTOs.Users;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.UserGroups.GetUserGroupById;

public class GetUserGroupByIdQueryHandler(IRepository<UserGroup, Guid> userGroupRepository)
    : IRequestHandler<GetUserGroupByIdQuery, UserGroupDto?>
{
    public async Task<UserGroupDto?> Handle(GetUserGroupByIdQuery request, CancellationToken cancellationToken)
    {
        var userGroup = await userGroupRepository
            .Where(x => x.Id.Equals(request.Id))
            .Include(x => x.Users)
            .Include(x => x.UserGroupPolicies)
            .FirstOrDefaultAsync(cancellationToken);
        
        if (userGroup == null) return null;
        
        var dto = new UserGroupDto
        {
            Id = userGroup.Id,
            Name = userGroup.Name,
            Users = userGroup.Users.Select(x => new UserDto
            {
                Id = x.Id,
                FullName = x.FullName,
                Email = x.Email,
                Status = x.Status
            }).ToList(),
            UserGroupPolicies = userGroup.UserGroupPolicies.Select(x => new UserGroupPolicyDto
            {
                Id = x.Id,
                Policy = x.Policy,
                UserGroup = null
            }).ToList()
        };
        return dto;
    }
}
using Application.DTOs.UserGroupPolicies;
using Application.DTOs.UserGroups;
using Application.DTOs.Users;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.UserGroups.GetUserGroups;

public class GetUserGroupsQueryHandler(IRepository<UserGroup, Guid> userGroupRepository) : IRequestHandler<GetUserGroupsQuery, List<UserGroupDto>>
{
    public async Task<List<UserGroupDto>> Handle(GetUserGroupsQuery request, CancellationToken cancellationToken)
    {
        var userGroups = await userGroupRepository.Where(x => true)
            .Include(x => x.Users)
            .Include(x => x.UserGroupPolicies)
            .ToListAsync(cancellationToken);

        return userGroups.Select(userGroup => new UserGroupDto
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
        }).ToList();
    }
}

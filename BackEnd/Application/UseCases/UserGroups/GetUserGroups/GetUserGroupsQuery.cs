using Application.DTOs.UserGroups;
using MediatR;

namespace Application.UseCases.UserGroups.GetUserGroups;

public class GetUserGroupsQuery : IRequest<List<UserGroupDto>>
{
    
}

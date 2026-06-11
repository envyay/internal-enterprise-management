using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.UserGroups.GetUserGroups;

public class GetUserGroupsQuery : IRequest<List<UserGroup>>
{
    
}
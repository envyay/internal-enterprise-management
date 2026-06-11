using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.UserGroups.GetUserGroups;

public class GetUserGroupsQueryHandler(IRepository<UserGroup, Guid> userGroupRepository) : IRequestHandler<GetUserGroupsQuery, List<UserGroup>>
{
    public Task<List<UserGroup>> Handle(GetUserGroupsQuery request, CancellationToken cancellationToken)
    {
        return userGroupRepository.GetAll(cancellationToken);
    }
}
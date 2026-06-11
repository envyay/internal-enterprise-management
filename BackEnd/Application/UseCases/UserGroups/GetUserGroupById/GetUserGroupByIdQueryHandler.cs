using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.UserGroups.GetUserGroupById;

public class GetUserGroupByIdQueryHandler(IRepository<UserGroup, Guid> userGroupRepository) : IRequestHandler<GetUserGroupByIdQuery, UserGroup?>
{
    public async Task<UserGroup?> Handle(GetUserGroupByIdQuery request, CancellationToken cancellationToken)
    {
        var userGroup = await userGroupRepository.GetByIdAsync(request.Id, cancellationToken);
        return userGroup;
    }
}
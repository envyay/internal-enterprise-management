using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.UserGroups.AddUsers;

public class AddUsersToUserGroupCommandHandler(
    IRepository<UserGroup, Guid> userGroupRepository,
    IUnitOfWork unitOfWork,
    IRepository<User, Guid> userRepository)
    : IRequestHandler<AddUsersToUserGroup, bool>
{
    public async Task<bool> Handle(AddUsersToUserGroup request, CancellationToken cancellationToken)
    {
        var users = await userRepository
            .Where(x => request.UserIds.Contains(x.Id))
            .ToListAsync(cancellationToken);
        var userGroup = await userGroupRepository.GetByIdAsync(request.Id, cancellationToken);
        if (userGroup == null) return false;
        userGroup.AddUsers(users);

        await userGroupRepository.UpdateAsync(userGroup);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
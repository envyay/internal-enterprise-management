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
    : IRequestHandler<AddUsersToUserGroupCommand, bool>
{
    public async Task<bool> Handle(AddUsersToUserGroupCommand request, CancellationToken cancellationToken)
    {
        var users = await userRepository
            .Where(x => request.UserIds.Contains(x.Id))
            .ToListAsync(cancellationToken);
        var userGroup = await userGroupRepository.Where(x => x.Id.Equals(request.Id)).Include(x => x.Users).FirstOrDefaultAsync(cancellationToken);
        if (userGroup == null) return false;
        userGroup.AddUsers(users);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
using Application.UseCases.Projects.SetUsersInProject;
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.UserGroups.SetUsersInUserGroup;

public class SetUsersInUserGroupCommandHandler(
    IRepository<User, Guid> userRepository,
    IRepository<UserGroup, Guid> userGroupRepository,
    IUnitOfWork unitOfWork) : IRequestHandler<SetUsersInUserGroupCommand, bool>
{
    public async Task<bool> Handle(SetUsersInUserGroupCommand request, CancellationToken cancellationToken)
    {
        var users = await userRepository.Where(u => request.UserIds.Contains(u.Id)).ToListAsync(cancellationToken);
        var userGroup = await userGroupRepository.Where(p => request.Id.Equals(p.Id)).Include(u => u.Users)
            .FirstOrDefaultAsync(cancellationToken);
        if (userGroup == null) return false;
        userGroup.SetUsers(users);
        await userGroupRepository.UpdateAsync(userGroup);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
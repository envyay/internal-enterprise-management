using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Exceptions;

namespace Application.UseCases.UserGroups.RemoveUser;

public class RemoveUserFromUserGroupCommandHandler(
    IRepository<UserGroup, Guid> userGroupRepository,
    IUnitOfWork unitOfWork)
    : IRequestHandler<RemoveUserFromUserGroupCommand, bool>
{
    public async Task<bool> Handle(RemoveUserFromUserGroupCommand request, CancellationToken cancellationToken)
    {
        var userGroup = await userGroupRepository
            .Where(x => x.Id.Equals(request.Id))
            .Include(x => x.Users)
            .FirstOrDefaultAsync(cancellationToken);
        
        if (userGroup == null)
        {
            throw new NotFoundException("UserGroup not found");
        }

        var userToRemove = userGroup.Users.FirstOrDefault(x => x.Id == request.UserId);
        if (userToRemove == null)
        {
            throw new NotFoundException("User not found");
        }

        userGroup.Users.Remove(userToRemove);
        await userGroupRepository.UpdateAsync(userGroup);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
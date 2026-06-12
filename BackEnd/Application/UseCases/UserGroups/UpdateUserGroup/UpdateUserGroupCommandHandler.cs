using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.UserGroups.UpdateUserGroup;

public class UpdateUserGroupCommandHandler(IRepository<UserGroup, Guid> userGroupRepository, IUnitOfWork unitOfWork, IRepository<User, Guid> userRepository) : IRequestHandler<UpdateUserGroupCommand, bool>
{
    public async Task<bool> Handle(UpdateUserGroupCommand request, CancellationToken cancellationToken)
    {
        var users = await userRepository.Where(x => request.UserIds.Contains(x.Id)).ToListAsync(cancellationToken);
        var userGroup = await userGroupRepository.Where(x => x.Id.Equals(request.Id)).Include(x => x.Users).FirstOrDefaultAsync(cancellationToken);
        if (userGroup == null) return false;
        
        userGroup.Update(request.Name, users);
        await userGroupRepository.UpdateAsync(userGroup);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
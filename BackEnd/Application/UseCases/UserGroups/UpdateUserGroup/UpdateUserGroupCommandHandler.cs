using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.UserGroups.UpdateUserGroup;

public class UpdateUserGroupCommandHandler(IRepository<UserGroup, Guid> userGroupRepository, IUnitOfWork unitOfWork) : IRequestHandler<UpdateUserGroupCommand, bool>
{
    public async Task<bool> Handle(UpdateUserGroupCommand request, CancellationToken cancellationToken)
    {
        var userGroup = await userGroupRepository.GetByIdAsync(request.Id, cancellationToken);
        if (userGroup == null) return false;
        
        userGroup.Update(request.Name);
        await userGroupRepository.UpdateAsync(userGroup);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.UserGroups.DeleteUserGroupById;

public class DeleteUserGroupByIdCommandHandler(IRepository<UserGroup, Guid> userGroupRepository, IUnitOfWork unitOfWork) : IRequestHandler<DeleteUserGroupByIdCommand, bool>
{
    public async Task<bool> Handle(DeleteUserGroupByIdCommand request, CancellationToken cancellationToken)
    {
        var userGroup = await userGroupRepository.GetByIdAsync(request.Id, cancellationToken);
        if (userGroup == null) return false;
        await userGroupRepository.DeleteAsync(userGroup);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
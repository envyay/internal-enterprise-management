using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.UserGroups.SetPoliciesInUserGroup;

public class SetPoliciesInUserGroupCommandHandler(
    IRepository<UserGroup, Guid> userGroupRepository,
    IUnitOfWork unitOfWork
) : IRequestHandler<SetPoliciesInUserGroupCommand, bool>
{
    public async Task<bool> Handle(SetPoliciesInUserGroupCommand request, CancellationToken cancellationToken)
    {
        var userGroup = await userGroupRepository.GetByIdAsync(request.Id, cancellationToken);
        if (userGroup == null) return false;

        var policies = request.Policies.Select(UserGroupPolicy.Create).ToList();

        userGroup.SetPolicies(policies);
        await userGroupRepository.UpdateAsync(userGroup);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
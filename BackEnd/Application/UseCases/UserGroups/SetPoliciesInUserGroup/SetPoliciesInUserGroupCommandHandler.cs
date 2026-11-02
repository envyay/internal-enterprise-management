using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.UserGroups.SetPoliciesInUserGroup;

public class SetPoliciesInUserGroupCommandHandler(
    IRepository<UserGroupPolicy, Guid> userGroupPolicyRepository,
    IRepository<UserGroup, Guid> userGroupRepository,
    IUnitOfWork unitOfWork) : IRequestHandler<SetPoliciesInUserGroupCommand, bool>
{
    public async Task<bool> Handle(SetPoliciesInUserGroupCommand request, CancellationToken cancellationToken)
    {
        var userGroupPolicies = await userGroupPolicyRepository.Where(u => request.PolicyIds.Contains(u.Id)).ToListAsync(cancellationToken);
        var userGroup = await userGroupRepository.Where(p => request.Id.Equals(p.Id)).Include(u => u.UserGroupPolicies)
            .FirstOrDefaultAsync(cancellationToken);
        if (userGroup == null) return false;
        userGroup.SetPolicies(userGroupPolicies);
        await userGroupRepository.UpdateAsync(userGroup);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
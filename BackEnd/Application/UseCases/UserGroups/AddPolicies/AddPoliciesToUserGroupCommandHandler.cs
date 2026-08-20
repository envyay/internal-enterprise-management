using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.UserGroups.AddPolicies;

public class AddPoliciesToUserGroupCommandHandler(
    IRepository<UserGroup, Guid> userGroupRepository,
    IRepository<UserGroupPolicy, Guid> userGroupPolicyRepository,
    IUnitOfWork unitOfWork)
    : IRequestHandler<AddPoliciesToUserGroupCommand, bool>
{
    public async Task<bool> Handle(AddPoliciesToUserGroupCommand request, CancellationToken cancellationToken)
    {
        var userGroup = await userGroupRepository.GetByIdAsync(request.Id, cancellationToken);
        if (userGroup == null) return false;

        var policies = request.Policies.Select(x => UserGroupPolicy.Create(x)).ToList();
        await userGroupPolicyRepository.AddRangeAsync(policies, cancellationToken);
        
        userGroup.AddPolicies(policies);
        await userGroupRepository.UpdateAsync(userGroup);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Exceptions;

namespace Application.UseCases.UserGroups.RemovePolicy;

public class RemovePolicyCommandHandler(IRepository<UserGroup, Guid> userGroupRepository, IUnitOfWork unitOfWork) : IRequestHandler<RemovePolicyCommand, bool>
{
    public async Task<bool> Handle(RemovePolicyCommand request, CancellationToken cancellationToken)
    {
        var userGroup = await userGroupRepository
            .Where(x => x.Id.Equals(request.Id))
            .Include(x => x.UserGroupPolicies)
            .FirstOrDefaultAsync(cancellationToken);
        if (userGroup == null)
        {
            throw new NotFoundException("UserGroup not found");
        }
        
        var policyToRemove = userGroup.UserGroupPolicies.FirstOrDefault(x => x.Id == request.PolicyId);
        if (policyToRemove == null)
        {
            throw new NotFoundException("Policy not found");
        }
        
        userGroup.UserGroupPolicies.Remove(policyToRemove);
        await userGroupRepository.UpdateAsync(userGroup);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
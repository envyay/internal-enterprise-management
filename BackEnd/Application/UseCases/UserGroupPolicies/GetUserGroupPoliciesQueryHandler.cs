using Application.DTOs.UserGroupPolicies;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using SharedKernel.Constants;

namespace Application.UseCases.UserGroupPolicies;

public class GetUserGroupPoliciesQueryHandler(IRepository<UserGroupPolicy, Guid> userGroupPolicyRepository) : IRequestHandler<GetUserGroupPoliciesQuery, List<UserGroupPolicyDto>>
{
    public async Task<List<UserGroupPolicyDto>> Handle(GetUserGroupPoliciesQuery request, CancellationToken cancellationToken)
    {
        var userGroupPolicies = AppPolicy.Policies;
        return userGroupPolicies.Select(x => new UserGroupPolicyDto
        {
            Id = Guid.CreateVersion7(),
            Policy = x,
            UserGroup = null
        }).ToList();
    }
}
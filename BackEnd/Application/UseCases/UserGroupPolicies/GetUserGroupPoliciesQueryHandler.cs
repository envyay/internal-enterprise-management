using Application.DTOs.UserGroupPolicies;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.UserGroupPolicies;

public class GetUserGroupPoliciesQueryHandler(IRepository<UserGroupPolicy, Guid> userGroupPolicyRepository) : IRequestHandler<GetUserGroupPoliciesQuery, List<UserGroupPolicyDto>>
{
    public async Task<List<UserGroupPolicyDto>> Handle(GetUserGroupPoliciesQuery request, CancellationToken cancellationToken)
    {
        var userGroupPolicies = await userGroupPolicyRepository.GetAll(cancellationToken);
        return userGroupPolicies.Select(x => new UserGroupPolicyDto
        {
            Id = x.Id,
            Policy = x.Policy,
            UserGroup = null
        }).ToList();
    }
}
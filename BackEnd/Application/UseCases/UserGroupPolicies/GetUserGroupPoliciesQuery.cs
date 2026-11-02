using Application.DTOs.UserGroupPolicies;
using MediatR;

namespace Application.UseCases.UserGroupPolicies;

public class GetUserGroupPoliciesQuery : IRequest<List<UserGroupPolicyDto>>
{
    
}
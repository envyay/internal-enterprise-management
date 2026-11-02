using Application.DTOs.UserGroupPolicies;
using MediatR;

namespace Application.UseCases.Users.GetPolicies;

public class GetPoliciesQuery : IRequest<List<string>>
{
    
}
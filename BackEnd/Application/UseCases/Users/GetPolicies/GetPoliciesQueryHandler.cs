using Application.DTOs.UserGroupPolicies;
using Infrastructure.Services;
using MediatR;

namespace Application.UseCases.Users.GetPolicies;

public class GetPoliciesQueryHandler(IUserContextService userContextService) : IRequestHandler<GetPoliciesQuery, List<string>>
{
    public async Task<List<string>> Handle(GetPoliciesQuery request, CancellationToken cancellationToken)
    {
        var policies = userContextService.GetUserPolicies();
        return policies;
    }
}
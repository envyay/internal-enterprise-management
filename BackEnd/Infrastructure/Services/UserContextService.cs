using System.Security.Claims;
using Microsoft.AspNetCore.Http;

namespace Infrastructure.Services;

public class UserContextService(IHttpContextAccessor contextAccessor) : IUserContextService
{

    public Guid? GetUserId()
    {
        var id = contextAccessor.HttpContext?.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
        if (id == null) return null;

        return Guid.Parse(id);
    }
    public List<string> GetUserPolicies()
    {
        var policies = contextAccessor.HttpContext?.User.FindAll("policy").ToList();
        return policies?.Select(p => p.Value).ToList() ?? [];
    }
}
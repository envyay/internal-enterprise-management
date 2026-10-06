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
}
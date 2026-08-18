using Domain.Aggregates;

namespace Infrastructure.Services;

public interface IJwtService
{
    public Task<string> GenerateTokenAsync(User user, List<string> policies);
}
using StackExchange.Redis;

namespace Infrastructure.Services;

public class CacheService(IConnectionMultiplexer connection) : ICacheService
{
    private readonly IDatabase _database = connection.GetDatabase();
    
    public Task<bool> SetAsync(string key, string value, TimeSpan? expiry = null)
    {
        return _database.StringSetAsync(key, value, expiry ?? TimeSpan.FromMinutes(1));
    }

    public async Task<string?> GetAsync(string key)
    {
        var result = await _database.StringGetAsync(key);
        return result;
    }

    public Task<bool> DeleteAsync(string key)
    {
        return _database.KeyDeleteAsync(key);
    }
}
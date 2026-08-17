namespace Infrastructure.Services;

public interface ICacheService
{
    public Task<bool> SetAsync(string key, string value, TimeSpan? expiry = null);
    public Task<string?> GetAsync(string key);
    public Task<bool> DeleteAsync(string key);
}
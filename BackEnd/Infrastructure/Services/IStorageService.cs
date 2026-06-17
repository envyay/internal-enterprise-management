namespace Infrastructure.Services;

public interface IStorageService
{
    Task<string> GetPresignedUrlAsync(string objectName, int expirationSeconds = 3600);
    Task DeleteAsync(string objectName, CancellationToken cancellationToken = default);
}
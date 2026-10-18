namespace Infrastructure.Services;

public interface IRagService
{
    Task<String> Chat(string question, CancellationToken cancellationToken = default);
    Task<bool> Ingest(string bucketName, string objectName, CancellationToken cancellationToken = default);
}
namespace Infrastructure.Services;

public interface IRagService
{
    Task<String> Chat(string question, CancellationToken cancellationToken = default);

    Task<bool> Ingest(string bucketName, string objectName, string documentId, string? referenceId, int referenceType,
        string fileName, CancellationToken cancellationToken = default);
}
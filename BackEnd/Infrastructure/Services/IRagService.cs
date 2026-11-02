using System.Runtime.CompilerServices;

namespace Infrastructure.Services;

public interface IRagService
{
    Task<Stream> Chat(string query, Guid threadId, List<Guid>? documentIds, CancellationToken cancellationToken = default);

    Task<bool> Ingest(string bucketName, string objectName, string documentId, string? referenceId, int referenceType,
        string fileName, CancellationToken cancellationToken = default);
}
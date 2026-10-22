using System.Net.Http.Json;

namespace Infrastructure.Services;

public class RagService(HttpClient http) : IRagService
{
    public Task<Stream> Chat(string? query, Guid threadId, List<Guid>? documentIds, Guid? userId, CancellationToken cancellationToken = default)
    {
        var res = http.PostAsJsonAsync("/stream", new { query, threadId, documentIds, userId }, cancellationToken);
        return res.Result.Content.ReadAsStreamAsync(cancellationToken);
    }

    public async Task<bool> Ingest(string bucketName, string objectName, string documentId, string? referencedId, int referenceType, string fileName,CancellationToken cancellationToken = default)
    {
        var success = await http.PostAsJsonAsync("/minio-webhook", new {bucketName, objectName, documentId, referencedId, referenceType, fileName}, cancellationToken);
        var res = await success.Content.ReadAsStringAsync(cancellationToken);
        return true;
    }
}
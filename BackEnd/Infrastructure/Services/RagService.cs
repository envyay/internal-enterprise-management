using System.Net.Http.Json;
using System.Runtime.CompilerServices;

namespace Infrastructure.Services;

public class RagService(HttpClient http) : IRagService
{
    public async Task<Stream> Chat(string? query, Guid threadId, List<Guid>? documentIds, CancellationToken cancellationToken = default)
    {
        var req = new HttpRequestMessage(HttpMethod.Post, "/chat/stream")
        {
            Content = JsonContent.Create(new { query, threadId, documentIds })
        };
        var res = await  http.SendAsync(req, HttpCompletionOption.ResponseHeadersRead ,cancellationToken);
        res.EnsureSuccessStatusCode();
        
        return await res.Content.ReadAsStreamAsync(cancellationToken);
    }

    public async Task<bool> Ingest(string bucketName, string objectName, string documentId, string? referencedId, int referenceType, string fileName,CancellationToken cancellationToken = default)
    {
        var success = await http.PostAsJsonAsync("/minio-webhook", new {bucketName, objectName, documentId, referencedId, referenceType, fileName}, cancellationToken);
        var res = await success.Content.ReadAsStringAsync(cancellationToken);
        return true;
    }
}
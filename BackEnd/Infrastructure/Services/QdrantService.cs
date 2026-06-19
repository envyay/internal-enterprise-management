using Microsoft.Extensions.Options;
using Qdrant.Client;
using Qdrant.Client.Grpc;
using SharedKernel.Options;


namespace Infrastructure.Services;

public class QdrantService(IQdrantClient client, IOptions<QdrantOptions> options) : IQdrantService
{
    private readonly QdrantOptions _options = options.Value;

    public async Task<UpdateResult> UpsertAsync(IReadOnlyList<PointStruct> points, CancellationToken cancellationToken = default)
    {
        return await client.UpsertAsync(_options.Collection, points, cancellationToken: cancellationToken);
    }
}
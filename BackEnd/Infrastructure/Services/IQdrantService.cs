using Qdrant.Client.Grpc;

namespace Infrastructure.Services;
public interface IQdrantService
{
    Task<UpdateResult> UpsertAsync(IReadOnlyList<PointStruct> points, CancellationToken cancellationToken = default);
}
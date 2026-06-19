using Minio.DataModel;

namespace Infrastructure.Services;

public interface IStorageService
{
    Task<string> GetPresignedGetObjectAsync(string objectName, int expirationSeconds = 3600);
    Task<string> GetPresignedPutObjectAsync(string objectName, int expirationSeconds = 3600);
    Task<ObjectStat> GetObjectAsync(string objectName, CancellationToken cancellationToken = default);
    Task<Stream> GetObjectStreamAsync(string objectName, CancellationToken cancellationToken = default);
    Task<byte[]> GetObjectBytesAsync(string objectName, CancellationToken cancellationToken = default);
    Task DeleteAsync(string objectName, CancellationToken cancellationToken = default);
}
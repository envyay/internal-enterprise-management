using Microsoft.Extensions.Options;
using Minio;
using Minio.DataModel.Args;
using SharedKernel.Options;

namespace Infrastructure.Services;

public class StorageService(IMinioClient client, IOptions<MinioOptions> options) : IStorageService
{
    private readonly MinioOptions _options = options.Value;
    
    public async Task<string> GetPresignedUrlAsync(string objectName, int expirationSeconds = 3600)
    {
        var args = new PresignedGetObjectArgs()
            .WithBucket(_options.BucketName)
            .WithObject(objectName)
            .WithExpiry(expirationSeconds);
        
        return await client.PresignedGetObjectAsync(args);
    }

    public Task DeleteAsync(string objectName, CancellationToken cancellationToken = default)
    {
        var args = new RemoveObjectArgs()
            .WithBucket(_options.BucketName)
            .WithObject(objectName);
        
        return client.RemoveObjectAsync(args, cancellationToken);
    }
}
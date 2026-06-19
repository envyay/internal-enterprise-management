using Microsoft.Extensions.Options;
using Minio;
using Minio.DataModel;
using Minio.DataModel.Args;
using SharedKernel.Options;

namespace Infrastructure.Services;

public class StorageService(IMinioClient client, IOptions<MinioOptions> options) : IStorageService
{
    private readonly MinioOptions _options = options.Value;
    
    public async Task<string> GetPresignedGetObjectAsync(string objectName, int expirationSeconds = 3600)
    {
        var args = new PresignedGetObjectArgs()
            .WithBucket(_options.BucketName)
            .WithObject(objectName)
            .WithExpiry(expirationSeconds);
        
        return await client.PresignedGetObjectAsync(args);
    }

    public async Task<string> GetPresignedPutObjectAsync(string objectName, int expirationSeconds = 3600)
    {
        var args = new PresignedPutObjectArgs()
            .WithBucket(_options.BucketName)
            .WithObject(objectName)
            .WithExpiry(expirationSeconds);
        
        return await client.PresignedPutObjectAsync(args);
    }

    public async Task<ObjectStat> GetObjectAsync(string objectName, CancellationToken cancellationToken = default)
    {
        var args = new GetObjectArgs().WithBucket(_options.BucketName).WithObject(objectName);
        return await client.GetObjectAsync(args, cancellationToken);
    }
    

    public async Task<Stream> GetObjectStreamAsync(string objectName, CancellationToken cancellationToken = default)
    {
        var memoryStream = new MemoryStream();
        var args = new GetObjectArgs().WithBucket(_options.BucketName).WithObject(objectName)
            .WithCallbackStream(stream =>
            {
                stream.CopyTo(memoryStream);
            });
        await client.GetObjectAsync(args, cancellationToken);
        memoryStream.Position = 0;
        return memoryStream;
    }
    
    public async Task<byte[]> GetObjectBytesAsync(
        string objectName,
        CancellationToken cancellationToken = default)
    {
        await using var stream = await GetObjectStreamAsync(
            objectName,
            cancellationToken);

        using var memoryStream = new MemoryStream();

        await stream.CopyToAsync(memoryStream, cancellationToken);

        return memoryStream.ToArray();
    }

    public Task DeleteAsync(string objectName, CancellationToken cancellationToken = default)
    {
        var args = new RemoveObjectArgs()
            .WithBucket(_options.BucketName)
            .WithObject(objectName);
        
        return client.RemoveObjectAsync(args, cancellationToken);
    }
}
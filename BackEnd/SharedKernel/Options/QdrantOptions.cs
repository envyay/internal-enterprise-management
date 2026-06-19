namespace SharedKernel.Options;

public sealed class QdrantOptions
{
    public string Host { get; set; }
    public int GrpcPort { get; set; }
    public string Collection { get; set; }
    public ulong VectorSize { get; set; }
}
namespace Application.Abstractions.VectorStores;

public sealed class VectorDocument
{
    public Guid Id { get; set; } = Guid.NewGuid();

    public float[] Vector { get; set; } = [];

    public string Text { get; set; } = default!;

    public Guid DocumentId { get; set; }
    public int ChunkIndex { get; set; }

    public Guid ReferenceId { get; set; }
    public Guid? ProjectId { get; set; }
    public Guid? DepartmentId { get; set; }
    
    public string ObjectName { get; set; } = default!;
}
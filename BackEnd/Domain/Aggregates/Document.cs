using SharedKernel.Aggregate;
using SharedKernel.Contants;

namespace Domain.Aggregates;

public class Document : AggregateRoot<Guid>
{
    public Guid ReferencedId { get; set; }
    public string BucketName { get; set; }
    public string ObjectName { get; set; }
    public string Size { get; set; }
    public DocumentStatus Status { get; set; }
    public string Extension { get; set; }
}
using SharedKernel.Aggregate;
using SharedKernel.Contants;

namespace Domain.Aggregates;

public class Document : AggregateRoot<Guid>
{
    public Guid ReferencedId { get; set; }
    public string BucketName { get; set; }
    public string ObjectName { get; set; }
    public int Size { get; set; }
    public DocumentStatus Status { get; set; }
    public string Extension { get; set; }
    public User Creator { get; set; }
    public User Updater { get; set; }
    
    public static Document Create(Guid referencedId, string objectName, int size, string extension)
    {
        return new Document
        {
            Id = Guid.NewGuid(),
            ReferencedId = referencedId,
            ObjectName = objectName,
            Size = size,
            Extension = extension,
            Status = DocumentStatus.Active,
        };
    }

    public void Update(string objectName)
    {
        ObjectName = objectName;
    }

    public void Delete()
    {
        Status = DocumentStatus.InActive;
    }
}
using SharedKernel.Aggregate;
using SharedKernel.Constants;

namespace Domain.Aggregates;

public class Document : AggregateRoot<Guid>
{
    public Guid? ReferencedId { get; set; }
    public DocumentReferenceType ReferenceType { get; set; }
    public string BucketName { get; set; }
    public string ObjectName { get; set; }
    public string Name { get; set; }
    public int Size { get; set; }
    public DocumentStatus Status { get; set; }
    public string Extension { get; set; }
    public User Creator { get; set; }
    public User Updater { get; set; }

    public static Document Create(
        Guid referencedId,
        DocumentReferenceType referenceType,
        string name,
        string objectName,
        string bucketName,
        int size,
        string extension
    )
    {
        return new Document
        {
            Id = Guid.NewGuid(),
            ReferencedId = referencedId,
            ReferenceType = referenceType,
            Name = name,
            BucketName = bucketName,
            ObjectName = objectName,
            Size = size,
            Extension = extension,
            Status = DocumentStatus.Active,
        };
    }

    public void Update(string name)
    {
        Name = name;
    }

    public void Delete()
    {
        Status = DocumentStatus.InActive;
    }
}
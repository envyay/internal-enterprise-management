using SharedKernel.Constants;

namespace Application.DTOs.Documents;

public class DocumentDto
{
    public Guid Id { get; set; }
    public Guid? ReferencedId { get; set; }
    public string BucketName { get; set; }
    public string ObjectName { get; set; }
    public DocumentReferenceType ReferenceType { get; set; }
    public int Size { get; set; }
    public string Extension { get; set; }
    public string Name { get; set; }
    public DocumentStatus Status { get; set; }  
}
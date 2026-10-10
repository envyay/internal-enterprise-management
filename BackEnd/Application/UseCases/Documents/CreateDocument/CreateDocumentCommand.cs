using MediatR;
using SharedKernel.Constants;

namespace Application.UseCases.Documents.CreateDocument;

public class CreateDocumentCommand : IRequest<Guid>
{
    public Guid ReferencedId { get; set; }
    public DocumentReferenceType ReferenceType { get; set; }
    public string Name { get; set; }
    public string ObjectName { get; set; }
    public int Size { get; set; }
    public string Extension { get; set; }
}
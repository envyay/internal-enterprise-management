using MediatR;

namespace Application.UseCases.Documents.CreateDocument;

public class CreateDocumentCommand : IRequest<Guid>
{
    public Guid ReferencedId { get; set; }
    public string ObjectName { get; set; }
    public int Size { get; set; }
    public string Extension { get; set; }
}
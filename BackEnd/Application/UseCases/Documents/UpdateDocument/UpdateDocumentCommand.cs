using MediatR;

namespace Application.UseCases.Documents.UpdateDocument;

public class UpdateDocumentCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public string ObjectName { get; set; }
}
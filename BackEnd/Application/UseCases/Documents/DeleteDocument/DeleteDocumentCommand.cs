using MediatR;

namespace Application.UseCases.Documents.DeleteDocument;

public class DeleteDocumentCommand : IRequest<bool>
{
    public string ObjectName { get; set; }
}
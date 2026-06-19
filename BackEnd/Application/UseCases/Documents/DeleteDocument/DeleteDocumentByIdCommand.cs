using MediatR;

namespace Application.UseCases.Documents.DeleteDocument;

public class DeleteDocumentByIdCommand : IRequest<bool>
{
    public Guid Id { get; set; }
}
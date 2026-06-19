using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Documents.GetDocumentById;

public class GetDocumentByIdQuery : IRequest<Document?>
{
    public Guid Id { get; set; }
}
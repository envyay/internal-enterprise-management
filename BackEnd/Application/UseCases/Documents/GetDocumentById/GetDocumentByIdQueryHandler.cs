using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Documents.GetDocumentById;

public class GetDocumentByIdQueryHandler(IRepository<Document, Guid> documentRepository) : IRequestHandler<GetDocumentByIdQuery, Document?>
{
    public async Task<Document?> Handle(GetDocumentByIdQuery request, CancellationToken cancellationToken)
    {
        var document = await documentRepository.GetByIdAsync(request.Id);
        return document;
    }
}
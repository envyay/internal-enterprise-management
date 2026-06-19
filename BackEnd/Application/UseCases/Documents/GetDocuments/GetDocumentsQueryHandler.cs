using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Contants;

namespace Application.UseCases.Documents.GetDocuments;

public class GetDocumentsQueryHandler(IRepository<Document, Guid> documentRepository) : IRequestHandler<GetDocumentsQuery, List<Document>>
{
    public async Task<List<Document>> Handle(GetDocumentsQuery request, CancellationToken cancellationToken)
    {
        // var documents = await documentRepository.GetAll(cancellationToken);
        var documents = await documentRepository.Where(x => x.Status == DocumentStatus.Active).ToListAsync(cancellationToken);
        return documents;
    }
}
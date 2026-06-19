using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Documents.GetDocuments;

public class GetDocumentsQuery : IRequest<List<Document>>
{
    
}
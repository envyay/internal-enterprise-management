using Application.DTOs.Documents;
using MediatR;

namespace Application.UseCases.Documents.GetDocumentsByTickets;

public class GetDocumentsByTicketsQuery : IRequest<List<DocumentDto>>
{
    
}
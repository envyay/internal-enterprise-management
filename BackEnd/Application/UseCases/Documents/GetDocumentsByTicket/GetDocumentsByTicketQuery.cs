using Application.DTOs.Documents;
using MediatR;

namespace Application.UseCases.Documents.GetDocumentsByTicket;

public class GetDocumentsByTicketQuery : IRequest<List<DocumentDto>>
{
    public Guid TicketId { get; set; }
}
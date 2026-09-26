using Application.DTOs.Tickets;
using MediatR;

namespace Application.UseCases.TicketStatuses.GetTicketsByTicketStatusId;

public class GetTicketsByTicketStatusIdQuery : IRequest<List<TicketDto>>
{
    public Guid TicketStatusId { get; set; }
}
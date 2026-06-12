using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.ticketStatuses.GetTicketStatuses;

public class GetTicketStatusesQuery : IRequest<List<TicketStatus>>
{
    
}
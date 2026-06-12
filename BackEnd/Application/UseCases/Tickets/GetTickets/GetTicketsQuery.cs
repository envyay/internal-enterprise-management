using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Tickets.GetTicketsQuery;

public class GetTicketsQuery : IRequest<List<Ticket>>
{
    
}
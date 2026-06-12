using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Tickets.GetTicketsQuery;

public class GetTicketsQueryHandler(IRepository<Ticket, Guid> ticketRepository) : IRequestHandler<GetTicketsQuery, List<Ticket>>
{
    public async Task<List<Ticket>> Handle(GetTicketsQuery request, CancellationToken cancellationToken)
    {
        var tickets = await ticketRepository.GetAll(cancellationToken);
        return tickets;
    }
}
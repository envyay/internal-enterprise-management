using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Tickets.GetTicketById;

public class GetTicketByIdQueryHandler(IRepository<Ticket, Guid> ticketRepository) : IRequestHandler<GetTicketByIdQuery, Ticket?>
{
    public Task<Ticket?> Handle(GetTicketByIdQuery request, CancellationToken cancellationToken)
    {
        var ticket = ticketRepository.GetByIdAsync(request.Id, cancellationToken);
        return ticket;
    }
}
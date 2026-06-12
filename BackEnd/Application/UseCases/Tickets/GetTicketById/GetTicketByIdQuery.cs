using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Tickets.GetTicketById;

public class GetTicketByIdQuery : IRequest<Ticket?>
{
    public Guid Id { get; set; }
}
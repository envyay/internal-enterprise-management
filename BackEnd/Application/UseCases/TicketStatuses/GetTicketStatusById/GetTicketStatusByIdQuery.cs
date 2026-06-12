using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.TicketStatuses.GetTicketStatusById;

public class GetTicketStatusByIdQuery : IRequest<TicketStatus?>
{
    public Guid Id { get; set; }
}
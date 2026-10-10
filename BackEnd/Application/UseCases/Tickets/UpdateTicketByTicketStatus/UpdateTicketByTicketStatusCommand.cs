using MediatR;

namespace Application.UseCases.Tickets.UpdateTicketByTicketStatus;

public class UpdateTicketByTicketStatusCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public Guid TicketStatusId { get; set; }
}
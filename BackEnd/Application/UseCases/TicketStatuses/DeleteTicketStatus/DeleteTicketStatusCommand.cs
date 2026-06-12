using MediatR;

namespace Application.UseCases.TicketStatuses.DeleteTicketStatus;

public class DeleteTicketStatusCommand : IRequest<bool>
{
    public Guid Id { get; set; }
}
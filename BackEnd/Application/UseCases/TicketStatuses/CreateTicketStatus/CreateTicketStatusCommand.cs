using MediatR;

namespace Application.UseCases.TicketStatuses.CreateTicketStatus;

public class CreateTicketStatusCommand : IRequest<Guid>
{
    public Guid ProjectId { get; set; }
    public string Name { get; set; }
}
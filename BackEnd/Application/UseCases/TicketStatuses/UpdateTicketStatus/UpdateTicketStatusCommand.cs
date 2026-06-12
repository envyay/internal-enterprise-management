using MediatR;

namespace Application.UseCases.TicketStatuses.UpdateTicketStatus;

public class UpdateTicketStatusCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public List<Guid> ProjectIds { get; set; }
}
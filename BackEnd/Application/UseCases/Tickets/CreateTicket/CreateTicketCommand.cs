using MediatR;

namespace Application.UseCases.Tickets.CreateTicket;

public class CreateTicketCommand : IRequest<Guid>
{
    public Guid ProjectId { get; set; }
    public Guid TicketStatusId { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public List<Guid> UserIds { get; set; }
}
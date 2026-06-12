using MediatR;

namespace Application.UseCases.Tickets.UpdateTicket;

public class UpdateTicketCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public List<Guid> UserIds { get; set; }
    public Guid TicketStatusId { get; set; }
}
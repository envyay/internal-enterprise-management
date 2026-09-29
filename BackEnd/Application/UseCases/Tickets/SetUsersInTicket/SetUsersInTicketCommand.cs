using MediatR;

namespace Application.UseCases.Tickets.SetUsersInTicket;

public class SetUsersInTicketCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public List<Guid> UserIds { get; set; }
}
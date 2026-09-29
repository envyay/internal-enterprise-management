using Application.DTOs.Users;
using MediatR;

namespace Application.UseCases.Tickets.GetUsersByTicketId;

public class GetUsersByTicketIdQuery : IRequest<List<UserDto>>
{
    public Guid TicketId { get; set; }
}
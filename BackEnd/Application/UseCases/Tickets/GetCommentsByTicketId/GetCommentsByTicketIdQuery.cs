using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Tickets.GetCommentsByTicketId;

public class GetCommentsByTicketIdQuery : IRequest<List<Comment>>
{
    public Guid TicketId { get; set; }
}
using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Tickets.GetCommentByTicketId;

public class GetCommentByTicketIdQuery : IRequest<List<Comment>>
{
    public Guid TicketId { get; set; }
}
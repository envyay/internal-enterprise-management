using Application.DTOs.Comments;
using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Tickets.GetCommentsByTicketId;

public class GetCommentsByTicketIdQuery : IRequest<List<CommentDto>>
{
    public Guid TicketId { get; set; }
}
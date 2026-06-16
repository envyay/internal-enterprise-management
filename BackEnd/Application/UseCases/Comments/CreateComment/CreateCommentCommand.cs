using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Comments.CreateComment;

public class CreateCommentCommand : IRequest<Guid>
{
    public Guid TicketId { get; set; }
    public string Content { get; set; }
    public Guid UserId { get; set; }
}
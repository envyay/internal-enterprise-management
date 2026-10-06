using Application.DTOs.Comments;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Tickets.GetCommentsByTicketId;

public class GetCommentsByTicketIdQueryHandler(IRepository<Comment, Guid> commentRepository)
    : IRequestHandler<GetCommentsByTicketIdQuery, List<CommentDto>>
{
    public async Task<List<CommentDto>> Handle(GetCommentsByTicketIdQuery request, CancellationToken cancellationToken)
    {
        var comments = await commentRepository.Where(x => x.TicketId.Equals(request.TicketId))
            .Select(x => new CommentDto
            {
                Id = x.Id,
                Content = x.Content,
                UserId = x.UserId,
                TicketId = x.TicketId,
            })
            .ToListAsync(cancellationToken);
        return comments;
    }
}
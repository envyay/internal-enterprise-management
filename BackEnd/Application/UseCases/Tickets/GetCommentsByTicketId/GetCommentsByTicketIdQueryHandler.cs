using Application.DTOs.Comments;
using Application.DTOs.Users;
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
            .Include(x => x.User)
            .ToListAsync(cancellationToken);
        
        
        return comments.Select(x => new CommentDto
        {
            Id = x.Id,
            Content = x.Content,
            TicketId = x.TicketId,
            User = new UserDto {Id = x.UserId, FullName = x.User.FullName}
        }).ToList();
    }
}
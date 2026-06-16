using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Tickets.GetCommentByTicketId;

public class GetCommentByTicketIdQueryHandler(IRepository<Comment, Guid> commentRepository) : IRequestHandler<GetCommentByTicketIdQuery, List<Comment>>
{
    public async Task<List<Comment>> Handle(GetCommentByTicketIdQuery request, CancellationToken cancellationToken)
    {
        var comments = await commentRepository.Where(x => x.TicketId.Equals(request.TicketId))
            .ToListAsync(cancellationToken);
        return comments;
    }
}
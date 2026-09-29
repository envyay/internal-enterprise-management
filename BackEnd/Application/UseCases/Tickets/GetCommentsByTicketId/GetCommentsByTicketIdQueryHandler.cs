using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Tickets.GetCommentsByTicketId;

public class GetCommentsByTicketIdQueryHandler(IRepository<Comment, Guid> commentRepository) : IRequestHandler<GetCommentsByTicketIdQuery, List<Comment>>
{
    public async Task<List<Comment>> Handle(GetCommentsByTicketIdQuery request, CancellationToken cancellationToken)
    {
        var comments = await commentRepository.Where(x => x.TicketId.Equals(request.TicketId))
            .ToListAsync(cancellationToken);
        return comments;
    }
}
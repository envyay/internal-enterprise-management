using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Comments.GetCommentById;

public class GetCommentQueryHandler(IRepository<Comment, Guid> commentRepository) : IRequestHandler<GetCommentQuery, Comment?>
{
    public async Task<Comment?> Handle(GetCommentQuery request, CancellationToken cancellationToken)
    {
        var comment = await commentRepository.GetByIdAsync(request.Id, cancellationToken);
        return comment;
    }
}
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Comments.GetComments;

public class GetCommentsQueryHandler(IRepository<Comment, Guid> commentRepository) : IRequestHandler<GetCommentsQuery, List<Comment>>
{
    public async Task<List<Comment>> Handle(GetCommentsQuery request, CancellationToken cancellationToken)
    {
        var comments = await commentRepository.GetAll(cancellationToken);
        return comments;
    }
}
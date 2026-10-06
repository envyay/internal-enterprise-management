using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Comments.CreateComment;

public class CreateCommentCommandHandler(IRepository<Comment, Guid> commentRepository, IUserContextService userContextService, IUnitOfWork unitOfWork) : IRequestHandler<CreateCommentCommand, Guid>
{
    public async Task<Guid> Handle(CreateCommentCommand request, CancellationToken cancellationToken)
    {
        var userId = userContextService.GetUserId();
        if (userId is null || userId == Guid.Empty) throw new UnauthorizedAccessException("User is not authenticated.");
        var comment = Comment.Create(request.TicketId, request.Content, userId.Value);
        await commentRepository.AddAsync(comment, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return comment.Id;
    }
}
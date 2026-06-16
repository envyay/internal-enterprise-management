using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Comments.UpdateComment;

public class UpdateCommentCommandHandler(IRepository<Comment, Guid> commentRepository, IUnitOfWork unitOfWork) : IRequestHandler<UpdateCommentCommand, bool>
{
    public async Task<bool> Handle(UpdateCommentCommand request, CancellationToken cancellationToken)
    {
        var comment = await commentRepository.GetByIdAsync(request.Id, cancellationToken);
        if (comment == null) return false;
        comment.Update(request.Content);
        await commentRepository.UpdateAsync(comment);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;

    }
}
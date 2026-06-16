using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Comments.DeleteCommentById;

public class DeleteCommentByIdCommandHandler(IRepository<Comment, Guid> commentRepository, IUnitOfWork unitOfWork) : IRequestHandler<DeleteCommentByIdCommand, bool>
{
    public async Task<bool> Handle(DeleteCommentByIdCommand request, CancellationToken cancellationToken)
    {
        var comment = await commentRepository.GetByIdAsync(request.Id, cancellationToken);
        if (comment == null) return false;
        await commentRepository.DeleteAsync(comment);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
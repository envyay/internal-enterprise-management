using MediatR;

namespace Application.UseCases.Comments.DeleteCommentById;

public class DeleteCommentByIdCommand : IRequest<bool>
{
    public Guid Id { get; set; }
}
using MediatR;

namespace Application.UseCases.Comments.UpdateComment;

public class UpdateCommentCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public string Content { get; set; }
}
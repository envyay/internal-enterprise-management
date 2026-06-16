using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Comments.GetCommentById;

public class GetCommentQuery : IRequest<Comment?>
{
    public Guid Id { get; set; }
}
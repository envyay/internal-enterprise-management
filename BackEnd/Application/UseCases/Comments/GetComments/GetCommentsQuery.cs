using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Comments.GetComments;

public class GetCommentsQuery : IRequest<List<Comment>>
{
    
}
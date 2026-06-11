using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.UserGroups.GetUserGroupById;

public class GetUserGroupByIdQuery : IRequest<UserGroup?>
{
    public Guid Id { get; set; }
}
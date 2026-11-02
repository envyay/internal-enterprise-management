using MediatR;

namespace Application.UseCases.UserGroups.SetUsersInUserGroup;

public class SetUsersInUserGroupCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public List<Guid> UserIds { get; set; }
}
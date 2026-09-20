using MediatR;

namespace Application.UseCases.UserGroups.AddUsers;

public class AddUsersToUserGroupCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public List<Guid> UserIds { get; set; }
}
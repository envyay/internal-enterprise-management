using MediatR;

namespace Application.UseCases.UserGroups.AddUsers;

public class AddUsersToUserGroup : IRequest<bool>
{
    public Guid Id { get; set; }
    public List<Guid> UserIds { get; set; }
}
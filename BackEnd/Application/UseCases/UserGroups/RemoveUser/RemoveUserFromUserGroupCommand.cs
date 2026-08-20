using MediatR;

namespace Application.UseCases.UserGroups.RemoveUser;

public class RemoveUserFromUserGroupCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public Guid UserId { get; set; }
}
using MediatR;

namespace Application.UseCases.UserGroups.RemoveUser;

public class RemoveUserCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public Guid UserId { get; set; }
}
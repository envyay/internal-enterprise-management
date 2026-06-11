using MediatR;

namespace Application.UseCases.UserGroups.CreateUserGroup;

public class CreateUserGroupCommand : IRequest<Guid>
{
    public string Name { get; set; }
    public List<Guid> UserIds { get; set; }
}
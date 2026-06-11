using MediatR;

namespace Application.UseCases.UserGroups.UpdateUserGroup;

public class UpdateUserGroupCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public string Name { get; set; }
}
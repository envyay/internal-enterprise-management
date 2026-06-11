using MediatR;

namespace Application.UseCases.UserGroups.DeleteUserGroupById;

public class DeleteUserGroupByIdCommand : IRequest<bool>
{
    public Guid Id { get; set; }
}
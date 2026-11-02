using Application.DTOs.Users;
using MediatR;

namespace Application.UseCases.UserGroups.GetUsersByUserGroupId;

public class GetUsersByUserGroupIdQuery : IRequest<List<UserDto>>
{
    public Guid UserGroupId { get; init; }
}
using Application.DTOs.UserGroups;
using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.UserGroups.GetUserGroupById;

public class GetUserGroupByIdQuery : IRequest<UserGroupDTO?>
{
    public Guid Id { get; set; }
}
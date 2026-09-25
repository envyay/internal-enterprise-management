using Application.DTOs.Users;
using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Projects.GetUsersByProjectId;

public class GetUsersByProjectIdQuery : IRequest<List<UserDto>>
{
    public Guid ProjectId { get; set; }
}
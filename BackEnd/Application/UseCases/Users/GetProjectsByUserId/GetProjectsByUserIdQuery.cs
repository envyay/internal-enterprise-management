using Application.DTOs.Projects;
using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Users.GetProjectsByUserId;

public class GetProjectsByUserIdQuery : IRequest<List<ProjectDto>?>
{
    public Guid UserId { get; set; }
}
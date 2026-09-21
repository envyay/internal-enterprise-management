using Application.DTOs.Projects;
using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Projects.GetProjectById;

public class GetProjectByIdQuery : IRequest<ProjectDto?>
{
    public Guid Id { get; set; }
}
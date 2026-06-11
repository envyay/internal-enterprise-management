using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Projects.GetProjectById;

public class GetProjectByIdQuery : IRequest<Project?>
{
    public Guid Id { get; set; }
}
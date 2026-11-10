using MediatR;
using SharedKernel.Constants;

namespace Application.UseCases.Projects.CreateProject;

public class CreateProjectCommand : IRequest<Guid>
{
    public string Name { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public string Code { get; set; } = string.Empty;
    public ProjectStatus Status { get; set; } = ProjectStatus.Active;
    public DateTime? StartDate { get; set; }
    public DateTime? EndDate { get; set; }
}
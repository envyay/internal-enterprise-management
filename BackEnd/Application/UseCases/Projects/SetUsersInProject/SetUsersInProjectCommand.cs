using MediatR;

namespace Application.UseCases.Projects.SetUsersInProject;

public class SetUsersInProjectCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public List<Guid> UserIds { get; set; }
}
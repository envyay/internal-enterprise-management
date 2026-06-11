using MediatR;

namespace Application.UseCases.Projects.DeleteProjectById;

public class DeleteProjectByIdCommand : IRequest<bool>
{
    public Guid Id { get; set; }
}
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Projects.DeleteProjectById;

public class DeleteProjectByIdCommandHandler(IRepository<Project, Guid> projectRepository, IUnitOfWork unitOfWork) : IRequestHandler<DeleteProjectByIdCommand, bool>
{
    public async Task<bool> Handle(DeleteProjectByIdCommand request, CancellationToken cancellationToken)
    {
        var project = await projectRepository.GetByIdAsync(request.Id, cancellationToken);
        if (project == null) return false;
        await projectRepository.DeleteAsync(project);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Projects.UpdateProject;

public class UpdateProjectCommandHandler(IRepository<Project, Guid> projectRepository, IUnitOfWork unitOfWork) : IRequestHandler<UpdateProjectCommand, bool>
{
    public async Task<bool> Handle(UpdateProjectCommand request, CancellationToken cancellationToken)
    {
        var project = await projectRepository.GetByIdAsync(request.Id, cancellationToken);
        if (project == null) return false;
        project.Update(request.Name, request.Description, request.Code, request.StartDate, request.EndDate);
        await projectRepository.UpdateAsync(project);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
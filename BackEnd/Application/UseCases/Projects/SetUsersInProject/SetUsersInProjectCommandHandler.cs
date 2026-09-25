using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Projects.SetUsersInProject;

public class SetUsersInProjectCommandHandler(IRepository<User, Guid> userRepository, IRepository<Project, Guid> projectRepository, IUnitOfWork unitOfWork) : IRequestHandler<SetUsersInProjectCommand, bool>
{
    public async Task<bool> Handle(SetUsersInProjectCommand request, CancellationToken cancellationToken)
    {
        var users = await userRepository.Where(u => request.UserIds.Contains(u.Id)).ToListAsync(cancellationToken);
        var project = await projectRepository.Where(p => request.Id.Equals(p.Id)).Include(u => u.Users)
            .FirstOrDefaultAsync(cancellationToken);
        if (project == null) return false;
        project.SetUsers(users);
        await projectRepository.UpdateAsync(project);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
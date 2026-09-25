using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Departments.AddUsersToDepartment;

public class SetUsersInDepartmentCommandHandler(
    IRepository<User, Guid> userRepository,
    IRepository<Department, Guid> departmentRepository,
    IUnitOfWork unitOfWork) : IRequestHandler<SetUsersInDepartmentCommand, bool>
{
    public async Task<bool> Handle(SetUsersInDepartmentCommand request, CancellationToken cancellationToken)
    {
        var users = await userRepository.Where(u => request.UserIds.Contains(u.Id)).ToListAsync(cancellationToken);
        var department = await departmentRepository.Where(d => d.Id == request.Id).Include(u => u.Users).FirstOrDefaultAsync(cancellationToken);
        if (department == null) return false;
        department.SetUsers(users); 
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
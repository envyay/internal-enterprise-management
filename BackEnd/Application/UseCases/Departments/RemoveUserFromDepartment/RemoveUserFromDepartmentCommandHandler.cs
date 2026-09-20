using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Exceptions;

namespace Application.UseCases.Departments.RemoveUserFromDepartment;

public class RemoveUserFromDepartmentCommandHandler(
    IRepository<Department, Guid> departmentRepository,
    IUnitOfWork unitOfWork) : IRequestHandler<RemoveUserFromDepartmentCommand, bool>
{
    public async Task<bool> Handle(RemoveUserFromDepartmentCommand request, CancellationToken cancellationToken)
    {
        var department = await departmentRepository
            .Where(d => request.Id.Equals(d.Id))
            .Include(u => u.Users)
            .FirstOrDefaultAsync(cancellationToken);

        if (department == null)
        {
            throw new NotFoundException("Department not found");
        }
        
        var userToRemove = department.Users.FirstOrDefault(x => x.Id == request.UserId);
        if (userToRemove == null)
        {
            throw new NotFoundException("User not found");
        }
        
        department.Users.Remove(userToRemove);
        await departmentRepository.UpdateAsync(department);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
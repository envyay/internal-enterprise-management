using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Departments.UpdateDepartment;

public class UpdateDepartmentCommandHandler(IRepository<Department, Guid> departmentRepository, IUnitOfWork unitOfWork) : IRequestHandler<UpdateDepartmentCommand, bool>
{
    public async Task<bool> Handle(UpdateDepartmentCommand request, CancellationToken cancellationToken)
    {
        var department = await departmentRepository.GetByIdAsync(request.Id, cancellationToken);
        if (department == null) return false;
        
        department.Update(request.Name);
        await departmentRepository.UpdateAsync(department);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
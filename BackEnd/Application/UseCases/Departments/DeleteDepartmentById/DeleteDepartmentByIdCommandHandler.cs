using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Departments.DeleteDepartment;

public class DeleteDepartmentByIdCommandHandler(IRepository<Department, Guid> departmentRepository, IUnitOfWork unitOfWork) : IRequestHandler<DeleteDepartmentByIdCommand, bool>
{
    public async Task<bool> Handle(DeleteDepartmentByIdCommand request, CancellationToken cancellationToken)
    {
        var department = await departmentRepository.GetByIdAsync(request.Id, cancellationToken);
        if (department == null) return false;
        await departmentRepository.DeleteAsync(department);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
        
    }
}
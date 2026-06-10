using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Departments.GetDepartmentById;

public class GetDepartmentQueryHandler(IRepository<Department, Guid> departmentRepository) : IRequestHandler<GetDepartmentByIdQuery, Department?>
{
    public async Task<Department?> Handle(GetDepartmentByIdQuery request, CancellationToken cancellationToken)
    {
        var department = await departmentRepository.GetByIdAsync(request.Id, cancellationToken);
        return department;
    }
}
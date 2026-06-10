using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Departments.GetDepartments;

public class GetDepartmentsQueryHandler(IRepository<Department, Guid> departmentRepository) : IRequestHandler<GetDepartmentsQuery, List<Department>>
{
    public Task<List<Department>> Handle(GetDepartmentsQuery request, CancellationToken cancellationToken)
    {
        return departmentRepository.GetAll(cancellationToken);
    }
}
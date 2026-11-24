using Application.DTOs.Departments;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Departments.GetDepartments;

public class GetDepartmentsQueryHandler(IRepository<Department, Guid> departmentRepository) : IRequestHandler<GetDepartmentsQuery, List<DepartmentDto>>
{
    public Task<List<DepartmentDto>> Handle(GetDepartmentsQuery request, CancellationToken cancellationToken)
    {
        return departmentRepository
            .Where(_ => true)
            .Select(d => new DepartmentDto
            {
                Id = d.Id,
                Name = d.Name,
                Head = d.Head,
                MemberCount = d.Users.Count
            })
            .ToListAsync(cancellationToken);
    }
}
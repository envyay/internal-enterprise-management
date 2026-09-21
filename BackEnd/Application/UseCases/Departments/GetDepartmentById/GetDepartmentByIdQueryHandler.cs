using Application.DTOs.Departments;
using Application.DTOs.Users;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Departments.GetDepartmentById;

public class GetDepartmentByIdQueryHandler(IRepository<Department, Guid> departmentRepository)
    : IRequestHandler<GetDepartmentByIdQuery, DepartmentDto?>
{
    public async Task<DepartmentDto?> Handle(GetDepartmentByIdQuery request, CancellationToken cancellationToken)
    {
        // var department = await departmentRepository.GetByIdAsync(request.Id, cancellationToken);
        var department = await departmentRepository
            .Where(d => request.Id.Equals(d.Id))
            .Include(u => u.Users)
            .FirstOrDefaultAsync(cancellationToken);
        if (department == null) return null;
        var dto = new DepartmentDto
        {
            Id = department.Id,
            Name = department.Name,
            Users = department.Users.Select(x => new UserDto
            {
                Id = x.Id,
                Email = x.Email,
                FullName = x.FullName,
                Status = x.Status
            }).ToList()
        };
        return dto;
    }
}
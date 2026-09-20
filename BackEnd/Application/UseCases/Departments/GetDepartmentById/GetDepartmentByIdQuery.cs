using Application.DTOs.Departments;
using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Departments.GetDepartmentById;

public class GetDepartmentByIdQuery : IRequest<DepartmentDTO?>
{
    public Guid Id { get; set; }
}
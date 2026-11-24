using Application.DTOs.Departments;
using MediatR;

namespace Application.UseCases.Departments.GetDepartments;

public class GetDepartmentsQuery : IRequest<List<DepartmentDto>>
{
}
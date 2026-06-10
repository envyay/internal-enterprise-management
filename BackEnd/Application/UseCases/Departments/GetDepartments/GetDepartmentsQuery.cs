using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Departments.GetDepartments;

public class GetDepartmentsQuery : IRequest<List<Department>>
{
    
}
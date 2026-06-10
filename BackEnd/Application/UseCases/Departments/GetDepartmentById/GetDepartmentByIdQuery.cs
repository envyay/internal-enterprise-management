using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Departments.GetDepartmentById;

public class GetDepartmentByIdQuery : IRequest<Department?>
{
    public Guid Id { get; set; }
}
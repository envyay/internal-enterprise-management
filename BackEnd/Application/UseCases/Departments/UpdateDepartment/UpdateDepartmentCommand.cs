using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Departments.UpdateDepartment;

public class UpdateDepartmentCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public string Name { get; set; }
}
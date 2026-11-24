using MediatR;

namespace Application.UseCases.Departments.CreateDepartment;

public class CreateDepartmentCommand : IRequest<Guid>
{
    public string Name { get; set; }
    public string? Head { get; set; }
}
using MediatR;

namespace Application.UseCases.Departments.DeleteDepartment;

public class DeleteDepartmentByIdCommand : IRequest<bool>
{
    public Guid Id { get; set; }
}
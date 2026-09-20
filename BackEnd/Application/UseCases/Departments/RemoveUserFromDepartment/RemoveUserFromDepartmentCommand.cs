using MediatR;

namespace Application.UseCases.Departments.RemoveUserFromDepartment;

public class RemoveUserFromDepartmentCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public Guid UserId { get; set; }
}
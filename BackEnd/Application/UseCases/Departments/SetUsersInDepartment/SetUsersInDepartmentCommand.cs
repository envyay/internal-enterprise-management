using MediatR;

namespace Application.UseCases.Departments.AddUsersToDepartment;

public class SetUsersInDepartmentCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public List<Guid> UserIds { get; set; }
}
using System.Windows.Input;
using MediatR;

namespace Application.UseCases.Users.UpdateUser;

public class UpdateUserCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public String FullName { get; set; }
    public String Email { get; set; }
}
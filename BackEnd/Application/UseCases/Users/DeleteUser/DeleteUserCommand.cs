using MediatR;

namespace Application.UseCases.Users.DeleteUser;

public class DeleteUserCommand : IRequest<bool>
{
    public Guid Id { get; set; }
}
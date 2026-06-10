using MediatR;

namespace Application.UseCases.Users.CreateUser;

public sealed record CreateUserCommand : IRequest<Guid>
{
    public string FullName { get; set; }
    public string Email { get; set; }
}
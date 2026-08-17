using MediatR;

namespace Application.UseCases.Users.LoginRequest;

public class LoginRequestCommand : IRequest<bool>
{
    public string Email { get; set; }
}
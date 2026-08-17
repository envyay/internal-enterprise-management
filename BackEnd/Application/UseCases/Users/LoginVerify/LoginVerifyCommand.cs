using MediatR;

namespace Application.UseCases.Users.LoginVerify;

public class LoginVerifyCommand : IRequest<string>
{
    public string Email { get; set; }
    public string Otp { get; set; }
}
using Infrastructure.Services;
using MediatR;

namespace Application.UseCases.Users.Authenticate;

public class LoginRequestCommandHandler(IOtpService otpService) : IRequestHandler<LoginRequestCommand, bool>
{
    public async Task<bool> Handle(LoginRequestCommand request, CancellationToken cancellationToken)
    {
        var otp = await otpService.GenerateOtpAsync(request.Email);
        return true;
    }
}
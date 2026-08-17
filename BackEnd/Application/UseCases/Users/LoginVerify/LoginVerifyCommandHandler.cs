using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Users.LoginVerify;

public class LoginVerifyCommandHandler(
    IOtpService otpService,
    IRepository<User, Guid> repository,
    IUnitOfWork unitOfWork,
    IJwtService jwtService
) : IRequestHandler<LoginVerifyCommand, string>
{
    public async Task<string> Handle(LoginVerifyCommand request, CancellationToken cancellationToken)
    {
        var verified = await otpService.VerifyOtpAsync(request.Email, request.Otp);
        if (verified == false) throw new Exception("Invalid OTP");

        var user = await repository.Where(x => x.Email.Equals(request.Email)).FirstOrDefaultAsync(cancellationToken);
        if (user == null)
        {
            user = User.Register(request.Email);
            await repository.AddAsync(user, cancellationToken);
            await unitOfWork.SaveChangesAsync(cancellationToken);
        }
        
        return await jwtService.GenerateTokenAsync(user);
    }
}
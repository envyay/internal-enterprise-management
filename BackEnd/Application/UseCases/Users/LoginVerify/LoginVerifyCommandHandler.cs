using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Users.LoginVerify;

public class LoginVerifyCommandHandler(
    IOtpService otpService,
    IRepository<User, Guid> userRepository,
    IUnitOfWork unitOfWork,
    IJwtService jwtService
) : IRequestHandler<LoginVerifyCommand, string>
{
    public async Task<string> Handle(LoginVerifyCommand request, CancellationToken cancellationToken)
    {
        var verified = await otpService.VerifyOtpAsync(request.Email, request.Otp);
        if (verified == false) throw new Exception("Invalid OTP");

        var user = await userRepository
            .Where(x => x.Email.Equals(request.Email))
            .FirstOrDefaultAsync(cancellationToken);

        if (user == null)
        {
            user = User.Register(request.Email);
            await userRepository.AddAsync(user, cancellationToken);
            await unitOfWork.SaveChangesAsync(cancellationToken);
        }
        
        var policies = await GetPolicies(user.Id, cancellationToken);


        return await jwtService.GenerateTokenAsync(user, policies);
    }

    private async Task<List<string>> GetPolicies(Guid userId, CancellationToken cancellationToken)
    {
        var policies = await userRepository.Where(x => x.Id == userId)
            .Include(x => x.UserGroups)
            .SelectMany(x => x.UserGroups)
            .Include(x => x.UserGroupPolicies)
            .SelectMany(x => x.UserGroupPolicies)
            .ToListAsync(cancellationToken: cancellationToken);
        
        return policies.Select(x => x.Policy).Distinct().ToList();
    }
}
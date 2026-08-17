namespace Infrastructure.Services;

public interface IOptService
{
    Task<string> GenerateOtpAsync(string email);
    Task<bool> VerifyOtpAsync(string email, string otp);
}
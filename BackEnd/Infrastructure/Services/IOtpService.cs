namespace Infrastructure.Services;

public interface IOtpService
{
    Task<string> GenerateOtpAsync(string email);
    Task<bool> VerifyOtpAsync(string email, string otp);
}
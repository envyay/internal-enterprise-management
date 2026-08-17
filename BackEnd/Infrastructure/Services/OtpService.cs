using System.Data;
using System.Security.Cryptography;
using Infrastructure.Repository;

namespace Infrastructure.Services;

public class OtpService(ICacheService cacheService) : IOtpService
{
    public async Task<string> GenerateOtpAsync(string email)
    {
        var key = $"otp:{email}";
        var otp = RandomNumberGenerator.GetInt32(100000, 999999).ToString();
        await cacheService.SetAsync(key, otp, TimeSpan.FromMinutes(5));
        return otp;
        
    }

    public async Task<bool> VerifyOtpAsync(string email, string otp)
    {
        var key = $"otp:{email}";
        if (otp != await cacheService.GetAsync(key)) return false;
        await cacheService.DeleteAsync(key);
        return true;

    }
}
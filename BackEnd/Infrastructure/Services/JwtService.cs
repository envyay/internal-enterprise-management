using System.Security.Claims;
using System.Text;
using System.IdentityModel.Tokens.Jwt;
using Domain.Aggregates;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using SharedKernel.Options;

namespace Infrastructure.Services;

public class JwtService(IOptions<JwtOptions> options) : IJwtService
{
    public Task<string> GenerateTokenAsync(User user)
    {
        var claims = new List<Claim>
        {
            new(ClaimTypes.NameIdentifier, user.Id.ToString()),
            new(ClaimTypes.Email, user.Email),
        };
        var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(options.Value.Key));
        var credentials = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

        var token = new JwtSecurityToken(
            issuer: options.Value.Issuer,
            audience: options.Value.Audience,
            claims: claims,
            expires: DateTime.UtcNow.AddMinutes(options.Value.ExpirationInMinutes),
            signingCredentials: credentials
        );
        return Task.FromResult(new JwtSecurityTokenHandler().WriteToken(token));
    }
}
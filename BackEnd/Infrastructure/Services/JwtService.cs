using System.Security.Claims;
using System.Text;
using System.IdentityModel.Tokens.Jwt;
using Domain.Aggregates;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using SharedKernel.Constants;
using SharedKernel.Options;

namespace Infrastructure.Services;

public class JwtService(IOptions<JwtOptions> options) : IJwtService
{
    public Task<string> GenerateTokenAsync(User user, List<string> policies)
    {
        var claims = new List<Claim>
        {
            new(ClaimTypes.NameIdentifier, user.Id.ToString()),
            new(ClaimTypes.Email, user.Email),
        };

        if (user.Type == UserType.Admin)
        {
            claims.Add(new Claim(ClaimTypes.Role, "Admin"));
        }

        foreach (var policy in policies)
        {
            claims.Add(new Claim("policy", policy));
        }

        var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(options.Value.Key));
        var credentials = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);
        var token = new JwtSecurityToken(
            issuer: options.Value.Issuer,
            audience: options.Value.Audience,
            claims: claims,
            expires: DateTime.UtcNow.AddMinutes(options.Value.ExpiresInMinutes),
            signingCredentials: credentials
        );
        return Task.FromResult(new JwtSecurityTokenHandler().WriteToken(token));
    }
}
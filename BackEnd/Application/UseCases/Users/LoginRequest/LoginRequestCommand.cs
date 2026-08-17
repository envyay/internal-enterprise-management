using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Users.Authenticate;

public class LoginRequestCommand : IRequest<bool>
{
    public string Email { get; set; }
}
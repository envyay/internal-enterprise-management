using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Users.GetUsers;

public sealed record GetUsersQuery : IRequest<List<User>>;
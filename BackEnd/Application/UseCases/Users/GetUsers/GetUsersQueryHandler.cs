using Application.DTOs.Users;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Users.GetUsers;

public class GetUsersQueryHandler(IRepository<User, Guid> userRepository)
    : IRequestHandler<GetUsersQuery, List<UserDTO>>
{
    public async Task<List<UserDTO>> Handle(GetUsersQuery request, CancellationToken cancellationToken)
    {
        var users = await userRepository.GetAll(cancellationToken);
        return users.Select(x => new UserDTO
        {
            Id = x.Id,
            FullName = x.FullName,
            Email = x.Email,
        }).ToList();
    }
}
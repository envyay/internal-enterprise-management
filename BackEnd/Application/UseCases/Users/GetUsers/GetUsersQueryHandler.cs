using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.Users.GetUsers;

public class GetUsersQueryHandler(IRepository<User, Guid> userRepository) : IRequestHandler<GetUsersQuery, List<User>>
{
    public Task<List<User>> Handle(GetUsersQuery request, CancellationToken cancellationToken)
    {
        return userRepository.GetAll(cancellationToken);
    }
}
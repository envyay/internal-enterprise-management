using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Users.DeleteUser;

public class DeleteUserCommandHandler(IRepository<User, Guid> userRepository, IUnitOfWork unitOfWork) : IRequestHandler<DeleteUserCommand, bool>
{
    public async Task<bool> Handle(DeleteUserCommand request, CancellationToken cancellationToken)
    {
        var user = await userRepository.GetByIdAsync(request.Id);
        if (user == null) return false;
        await userRepository.DeleteAsync(user);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
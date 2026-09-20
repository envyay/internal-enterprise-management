using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Users.UpdateUser;

public class UpdateUserCommandHandler(IRepository<User, Guid> userRepository, IUnitOfWork unitOfWork) : IRequestHandler<UpdateUserCommand, bool> 
{
    public async Task<bool> Handle(UpdateUserCommand request, CancellationToken cancellationToken)
    {
        var user = await userRepository.GetByIdAsync(request.Id, cancellationToken);
        if (user == null) return false;
        user.Update(request.FullName, request.Email, request.Status);
        await userRepository.UpdateAsync(user);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
using Domain.Aggregates;
using FluentValidation;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Users.CreateUser;

public class CreateUserCommandHandler(
    IRepository<User, Guid> userRepository,
    IUnitOfWork unitOfWork,
    IValidator<CreateUserCommand> validator
) : IRequestHandler<CreateUserCommand, Guid>
{
    public async Task<Guid> Handle(CreateUserCommand request, CancellationToken cancellationToken)
    {
        var validateResult = await validator.ValidateAsync(request, cancellationToken);
        if (!validateResult.IsValid)
        {
            throw new ValidationException(validateResult.Errors);
        }
        
        var user = User.Create(request.FullName, request.Email);
        await userRepository.AddAsync(user, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return user.Id;
    }
}
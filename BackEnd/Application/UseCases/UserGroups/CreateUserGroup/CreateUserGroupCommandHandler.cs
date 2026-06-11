using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.UserGroups.CreateUserGroup;

public class CreateUserGroupCommandHandler(IRepository<UserGroup, Guid> userGroupRepository, IUnitOfWork unitOfWork) : IRequestHandler<CreateUserGroupCommand, Guid>
{
    public async Task<Guid> Handle(CreateUserGroupCommand request, CancellationToken cancellationToken)
    {
        var userGroup = UserGroup.Create(request.Name);
        await userGroupRepository.AddAsync(userGroup, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return userGroup.Id;
    }
}
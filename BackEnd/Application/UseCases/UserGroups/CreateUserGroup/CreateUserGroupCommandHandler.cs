using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.UserGroups.CreateUserGroup;

public class CreateUserGroupCommandHandler(IRepository<UserGroup, Guid> userGroupRepository, IUnitOfWork unitOfWork, IRepository<User, Guid> userRepository) : IRequestHandler<CreateUserGroupCommand, Guid>
{
    public async Task<Guid> Handle(CreateUserGroupCommand request, CancellationToken cancellationToken)
    {
        var users = await userRepository.Where(x => request.UserIds.Contains(x.Id)).ToListAsync(cancellationToken);
        var userGroup = UserGroup.Create(request.Name, users);
        await userGroupRepository.AddAsync(userGroup, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return userGroup.Id;
    }
}
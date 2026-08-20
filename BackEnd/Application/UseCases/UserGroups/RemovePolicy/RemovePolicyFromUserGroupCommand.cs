using MediatR;

namespace Application.UseCases.UserGroups.RemovePolicy;

public class RemovePolicyFromUserGroupCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public Guid PolicyId { get; set; }
}
using MediatR;

namespace Application.UseCases.UserGroups.SetPoliciesInUserGroup;

public class SetPoliciesInUserGroupCommand : IRequest<bool>
{
    public Guid Id { get; set; }
    public List<Guid> PolicyIds { get; set; }
}
using MediatR;

namespace Application.UseCases.UserGroups.AddPolicies;

public class AddPoliciesToUserGroupCommand :IRequest<bool>
{
    public Guid Id { get; set; }
    public ICollection<string> Policies { get; set; } = new List<string>();
}
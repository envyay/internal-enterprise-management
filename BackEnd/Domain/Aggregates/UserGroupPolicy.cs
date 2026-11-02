using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class UserGroupPolicy : AggregateRoot<Guid>
{
    public string Policy { get; set; } = string.Empty;
    public ICollection<UserGroup> UserGroups { get; set; } = new List<UserGroup>();
    
    public static UserGroupPolicy Create(string policy)
    {
        return new UserGroupPolicy
        {
            Id = Guid.CreateVersion7(),
            Policy = policy
        };
    }
}

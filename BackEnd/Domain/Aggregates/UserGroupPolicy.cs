using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class UserGroupPolicy : AggregateRoot<Guid>
{
    public Guid UserGroupId { get; set; }
    public string Policy { get; set; }
    public UserGroup UserGroup { get; set; }
    
    public static UserGroupPolicy Create(string policy)
    {
        return new UserGroupPolicy
        {
            Id = Guid.CreateVersion7(),
            Policy = policy
        };
    }
}
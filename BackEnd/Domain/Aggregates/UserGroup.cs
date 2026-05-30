using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class UserGroup : AggregateRoot<Guid>
{
    public string Name { get; set; }
    public ICollection<User> Users { get; set; }
    public ICollection<UserGroupPolicy> UserGroupPolicies { get; set; }
}
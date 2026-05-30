using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class UserGroupPolicy : AggregateRoot<Guid>
{
    public Guid UserGroupId { get; set; }
    public string Policy { get; set; }
    public UserGroup UserGroup { get; set; }
}
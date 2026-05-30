using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class Department : AggregateRoot<Guid>
{
    public string Name { get; set; }
    public ICollection<User> Users { get; set; }
}
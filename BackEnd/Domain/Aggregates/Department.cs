using Domain.Events.DepartmentCreated;
using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class Department : AggregateRoot<Guid>
{
    public string Name { get; set; }
    public ICollection<User> Users { get; set; }

    public static Department Create(string name)
    {
        return new Department
        {
            Id = Guid.CreateVersion7(),
            Name = name
        };
    }

    public void DepartmentCreated()
    {
        AddDomainEvent(new DepartmentCreated
        {
            DepartmentId = Id
        });
    }
    
    public void Update(string name)
    {
        Name = name;
    }
}
using Domain.Events.DepartmentCreated;
using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class Department : AggregateRoot<Guid>
{
    public string Name { get; set; } = string.Empty;
    public string? Head { get; set; }
    public ICollection<User> Users { get; set; } = new List<User>();

    public static Department Create(string name, string? head)
    {
        return new Department
        {
            Id = Guid.CreateVersion7(),
            Name = name,
            Head = head
        };
    }

    public void SetUsers(List<User> users)
    {
        Users = users;
    }

    public void DepartmentCreated()
    {
        AddDomainEvent(new DepartmentCreated
        {
            DepartmentId = Id
        });
    }

    public void Update(string name, string? head)
    {
        Name = name;
        Head = head;
    }
}
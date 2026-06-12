using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class UserGroup : AggregateRoot<Guid>
{
    public string Name { get; set; }
    public ICollection<User> Users { get; set; }
    public ICollection<UserGroupPolicy> UserGroupPolicies { get; set; }

    public static UserGroup Create(string name, List<User> users)
    {
        return new UserGroup
        {
            Id = Guid.CreateVersion7(),
            Name = name,
            Users = users
            
        };
    }
    
    public void Update(string name, List<User> users)
    {
        Name = name;
        Users.Clear();
        Users = users;
    }
    
}
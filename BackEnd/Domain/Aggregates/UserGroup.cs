using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class UserGroup : AggregateRoot<Guid>
{
    public string Name { get; set; } = string.Empty;
    public ICollection<User> Users { get; set; } = new List<User>();
    public ICollection<UserGroupPolicy> UserGroupPolicies { get; set; } = new List<UserGroupPolicy>();

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
        foreach (var user in users)
        {
            Users.Add(user);
        }
    }
    
    public void SetUsers(List<User> users)
    {
        Users.Clear();
        foreach (var user in users)
        {
            Users.Add(user);
        }
    }
    
    public void SetPolicies(List<UserGroupPolicy> userGroupPolicies)
    {
        UserGroupPolicies.Clear();
        foreach (var policy in userGroupPolicies)
        {
            UserGroupPolicies.Add(policy);
        }
    }

    public void AddUsers(List<User> users)
    {
        foreach (var user in users)
        {
            Users.Add(user);
        }
    }

    public void AddPolicies(List<UserGroupPolicy> policies)
    {
        foreach (var policy in policies)
        {
            UserGroupPolicies.Add(policy);
        }
    }
}

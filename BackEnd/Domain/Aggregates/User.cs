using Domain.Events.UserCreated;
using SharedKernel.Aggregate;
using SharedKernel.Constants;

namespace Domain.Aggregates;

public class User : AggregateRoot<Guid>
{
    public string FullName { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public UserStatus Status { get; set; } = UserStatus.Active;
    public UserType Type { get; set; } = UserType.User;
    public bool IsProfileCompleted { get; set; } = false;
    public ICollection<UserGroup> UserGroups { get; set; } = new List<UserGroup>();
    public ICollection<Project> Projects { get; set; } = new List<Project>();
    public ICollection<Department> Departments { get; set; } = new List<Department>();
    public ICollection<Ticket> Tickets { get; set; } = new List<Ticket>();
    public ICollection<Document> CreatedDocuments { get; set; } = new List<Document>();
    public ICollection<Document> UpdateddDocuments { get; set; } = new List<Document>();
    public ICollection<Comment> Comments { get; set; } = new List<Comment>();

    public static User Create(string fullName, string email)
    {
        return new User
        {
            Id = Guid.CreateVersion7(),
            FullName = fullName,
            Email = email,
            Status = UserStatus.Active
        };
    }

    public static User Register(string email)
    {
        return new User()
        {
            Id = Guid.CreateVersion7(),
            Email = email,
            Status = UserStatus.Active,
            IsProfileCompleted = false
        };
    }

    public void UserCreated()
    {
        AddDomainEvent(new UserCreated());
    }
}
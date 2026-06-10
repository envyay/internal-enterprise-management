using SharedKernel.Aggregate;
using SharedKernel.Contants;

namespace Domain.Aggregates;

public class User : AggregateRoot<Guid>
{
    public string FullName { get; set; }
    public string Email { get; set; }
    public UserStatus Status { get; set; }
    public ICollection<UserGroup> UserGroups { get; set; }
    public ICollection<Project> Projects { get; set; }
    public ICollection<Department> Departments { get; set; }
    public ICollection<Ticket> Tickets { get; set; }
    public ICollection<Document> CreatedDocuments { get; set; }
    public ICollection<Document> UpdateddDocuments { get; set; }

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
}
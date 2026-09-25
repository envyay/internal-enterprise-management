using SharedKernel.Aggregate;
using SharedKernel.Constants;

namespace Domain.Aggregates;

public class Project : AggregateRoot<Guid>
{
    public string Name { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public string Code { get; set; } = string.Empty;
    public ProjectStatus Status { get; set; } = ProjectStatus.Active;
    public DateTime? StartDate { get; set; } = DateTime.Now;
    public DateTime? EndDate { get; set; } = DateTime.Now.AddYears(1);
    
    public ICollection<User> Users { get; set; } = new List<User>();
    public ICollection<Ticket> Tickets { get; set; } = new List<Ticket>();
    public ICollection<TicketStatus> TicketStatuses { get; set; } = new List<TicketStatus>();
    
    public static Project Create(string name, string description, string code, DateTime? startDate = null, DateTime? endDate = null)
    {
        return new Project
        {
            Id = Guid.CreateVersion7(),
            Name = name,
            Description = description,
            Code = code,
            Status = ProjectStatus.Active,
            StartDate = startDate,
            EndDate = endDate
        };
    }

    public void SetUsers(List<User> users)
    {
        Users = users;
    }
    
    public void Update(string name, string description, string code, DateTime? startDate = null, DateTime? endDate = null)
    {
        Name = name;
        Description = description;
        Code = code;
        StartDate = startDate;
        EndDate = endDate;
        
    }
}
using SharedKernel.Aggregate;
using SharedKernel.Contants;

namespace Domain.Aggregates;

public class Project : AggregateRoot<Guid>
{
    public string Name { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public ProjectStatus Status { get; set; }
    public DateTime? StartDate { get; set; }
    public DateTime? EndDate { get; set; }
    
    public ICollection<User> Users { get; set; }
    public ICollection<Ticket> Tickets { get; set; }
    public ICollection<TicketStatus> TicketStatuses { get; set; }
    
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
    
    public void Update(string name, string description, string code, DateTime? startDate = null, DateTime? endDate = null)
    {
        Name = name;
        Description = description;
        Code = code;
        StartDate = startDate;
        EndDate = endDate;
        
    }
}
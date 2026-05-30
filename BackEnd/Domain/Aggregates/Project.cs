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
}
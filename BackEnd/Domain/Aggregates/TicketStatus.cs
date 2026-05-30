using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class TicketStatus : AggregateRoot<Guid>
{
    public Guid ProjectId { get; set; }
    public string Name { get; set; }
    public Project Project { get; set; }
    public ICollection<Ticket> Tickets { get; set; }
    
}
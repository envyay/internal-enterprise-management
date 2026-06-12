using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class TicketStatus : AggregateRoot<Guid>
{
    public Guid ProjectId { get; set; }
    public string Name { get; set; }
    public Project Project { get; set; }
    public ICollection<Ticket> Tickets { get; set; }
    
    public static TicketStatus Create(Guid projectId, string name)
    {
        return new TicketStatus
        {
            Id = Guid.CreateVersion7(),
            ProjectId = projectId,
            Name = name,
        };
    }
    public void Update(string name)
    {
        Name = name;
    }
}
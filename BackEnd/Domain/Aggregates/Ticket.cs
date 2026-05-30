using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class Ticket : AggregateRoot<Guid>
{
    public Guid ProjectId { get; set; }
    public Guid TicketStatusId { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Comment { get; set; }
    public DateTime? DateTime { get; set; }
    public Project Project { get; set; }
    public TicketStatus TicketStatus { get; set; }
    public ICollection<User> Users { get; set; }
    public ICollection<UserGroup> UserGroups { get; set; }
}
using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class Ticket : AggregateRoot<Guid>
{
    public Guid ProjectId { get; set; }
    public Guid TicketStatusId { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public ICollection<Comment> Comments { get; set; }
    public Project Project { get; set; }
    public TicketStatus TicketStatus { get; set; }
    public ICollection<User> Users { get; set; }
    
    public static Ticket Create(Guid projectId, Guid ticketStatusId, string title, string description, List<User> users)
    {
        return new Ticket
        {
            Id = Guid.CreateVersion7(),
            ProjectId = projectId,
            TicketStatusId = ticketStatusId,
            Title = title,
            Description = description,
            Users = users
        };
    }
    public void Update(Guid ticketStatusId, string title, string description, List<User> users)
    {
        TicketStatusId = ticketStatusId;
        Title = title;
        Description = description;
        Users = users;
    }
    
}
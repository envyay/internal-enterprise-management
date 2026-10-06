using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class Ticket : AggregateRoot<Guid>
{
    public Guid TicketStatusId { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public ICollection<Comment> Comments { get; set; }
    public TicketStatus TicketStatus { get; set; }
    public ICollection<User> Users { get; set; }
    
    public static Ticket Create(Guid ticketStatusId, string title, string description, List<User> users)
    {
        return new Ticket
        {
            Id = Guid.CreateVersion7(),
            TicketStatusId = ticketStatusId,
            Title = title,
            Description = description,
            Users = users
        };
    }
    public void Update(Guid ticketStatusId, string title, string description)
    {
        TicketStatusId = ticketStatusId;
        Title = title;
        Description = description;
        // Users = users;
    }

    public void SetUsers(List<User> users)
    {
        Users = users;   
    }
}
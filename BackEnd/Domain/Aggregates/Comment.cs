using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class Comment : AggregateRoot<Guid>
{
    public Guid TicketId { get; set; }
    public Guid UserId { get; set; }
    public Ticket Ticket { get; set; }
    public string Content { get; set; }
    
    public User User { get; set; }

    public static Comment Create(Guid ticketId, string content, Guid userId)
    {
        return new Comment
        {
            Id = Guid.CreateVersion7(),
            TicketId = ticketId,
            Content = content,
            UserId = userId
        };
    }
    
    public void Update(string content)
    {
        Content = content;
    }
}
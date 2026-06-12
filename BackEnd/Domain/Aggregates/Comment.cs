using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class Comment : AggregateRoot<Guid>
{
    public Guid TicketId { get; set; }
    public Ticket Ticket { get; set; }
    public string Content { get; set; }
}
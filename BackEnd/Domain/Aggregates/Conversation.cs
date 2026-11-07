using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class Conversation : AggregateRoot<Guid>
{
    public Guid UserId { get; set; }
    public string Title { get; set; } = string.Empty;

    public User User { get; set; }
    public ICollection<ChatMessage> ChatMessages { get; set; } = new List<ChatMessage>();


    public static Conversation Create(Guid? userId, string title, Guid? id = null)
    {
        return new Conversation
        {
            Id = id ?? Guid.CreateVersion7(),
            UserId = userId ?? Guid.Empty,
            Title = title,
        };
    }
}
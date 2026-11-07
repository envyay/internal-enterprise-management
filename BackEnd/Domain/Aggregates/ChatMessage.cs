using SharedKernel.Aggregate;

namespace Domain.Aggregates;

public class ChatMessage : AggregateRoot<Guid>
{
    public Guid ConversationId { get; set; }
    public bool IsUser { get; set; }
    public string Content { get; set; } = string.Empty;

    public Conversation Conversation { get; set; }

    public static ChatMessage Create(string content, bool isUser, Guid conversationId)
    {
        return new ChatMessage
        {
            Id = Guid.CreateVersion7(),
            Content = content,
            IsUser = isUser,
            ConversationId = conversationId
        };
    }
}
namespace Application.DTOs.ChatMessages;

public class ChatMessageDto
{
    public Guid Id { get; set; }
    public Guid ConversationId { get; set; }
    public bool IsUser { get; set; }
    public string Content { get; set; } =  string.Empty;
    
}
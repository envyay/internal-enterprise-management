using Application.DTOs.ChatMessages;

namespace Application.DTOs.Conversations;

public class ConversationDto
{
    public Guid Id { get; set; }
    public Guid UserId { get; set; }
    public string Title { get; set; }

}
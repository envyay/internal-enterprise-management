using Application.DTOs.ChatMessages;
using MediatR;

namespace Application.UseCases.Chat.CreateChatMessage;

public class CreateChatMessageCommand : IRequest<Guid>
{
    public string Content { get; set; }
    public Guid ConversationId { get; set; }
    public bool IsUser { get; set; }
}
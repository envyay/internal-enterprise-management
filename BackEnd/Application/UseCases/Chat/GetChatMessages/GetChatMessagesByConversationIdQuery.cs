using Application.DTOs.ChatMessages;
using MediatR;

namespace Application.UseCases.Chat.GetChatMessages;

public class GetChatMessagesByConversationIdQuery : IRequest<List<ChatMessageDto>>
{
    public Guid ConversationId { get; set; }
}
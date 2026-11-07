using Application.DTOs.Conversations;
using MediatR;

namespace Application.UseCases.Chat.CreateConversation;

public class CreateConversationCommand : IRequest<ConversationDto>
{
    public string? Title { get; set; }
    public string? Query { get; set; }
    public Guid? Id { get; set; }
}

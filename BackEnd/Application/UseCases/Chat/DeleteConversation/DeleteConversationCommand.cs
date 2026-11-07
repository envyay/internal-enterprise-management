using MediatR;

namespace Application.UseCases.Chat.DeleteConversation;

public class DeleteConversationCommand : IRequest<bool>
{
    public Guid Id { get; set; }
}
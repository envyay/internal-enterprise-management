using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Chat.DeleteConversation;

public class DeleteConversationCommandHandler(
    IRepository<Conversation, Guid> conversationRepository,
    IRepository<ChatMessage, Guid> chatMessageRepository,
    IUnitOfWork unitOfWork) : IRequestHandler<DeleteConversationCommand, bool>
{
    public async Task<bool> Handle(DeleteConversationCommand request, CancellationToken cancellationToken)
    {
        var conversation = await conversationRepository.GetByIdAsync(request.Id, cancellationToken);
        if (conversation == null) return false;

        var messages = await chatMessageRepository
            .Where(x => x.ConversationId == request.Id)
            .ToListAsync(cancellationToken);

        if (messages.Count > 0)
        {
            await chatMessageRepository.DeleteRangeAsync(messages);
        }

        await conversationRepository.DeleteAsync(conversation);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}

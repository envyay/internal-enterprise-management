using Application.DTOs.ChatMessages;
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Chat.CreateChatMessage;

public class CreateChatMessageCommandHandler(IRepository<ChatMessage, Guid> chatMessageRepository, IUnitOfWork unitOfWork) : IRequestHandler<CreateChatMessageCommand, Guid>
{
    public async Task<Guid> Handle(CreateChatMessageCommand request, CancellationToken cancellationToken)
    {
        var chatMessage = ChatMessage.Create(request.Content, request.IsUser, request.ConversationId);
        await chatMessageRepository.AddAsync(chatMessage, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return chatMessage.Id;
    }
}
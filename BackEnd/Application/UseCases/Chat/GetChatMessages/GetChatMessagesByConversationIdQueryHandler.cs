using Application.DTOs.ChatMessages;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Chat.GetChatMessages;

public class GetChatMessagesByConversationIdQueryHandler(IRepository<ChatMessage, Guid> chatMessageRepository)
    : IRequestHandler<GetChatMessagesByConversationIdQuery, List<ChatMessageDto>>
{
    public async Task<List<ChatMessageDto>> Handle(GetChatMessagesByConversationIdQuery request,
        CancellationToken cancellationToken)
    {
        var messages = await chatMessageRepository.Where(x => x.ConversationId == request.ConversationId)
            .OrderBy(x => x.CreatedAt ?? DateTime.MinValue)
            .ThenBy(x => x.Id)
            .ToListAsync(cancellationToken);
        return messages.Select(x => new ChatMessageDto
        {
            Id = x.Id,
            Content = x.Content,
            ConversationId = x.ConversationId,
            IsUser = x.IsUser
        }).ToList();
    }
}
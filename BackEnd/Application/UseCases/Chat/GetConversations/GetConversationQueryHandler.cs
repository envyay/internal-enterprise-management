using Application.DTOs.Conversations;
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Chat.GetConversations;

public class GetConversationQueryHandler(
    IUserContextService userContextService,
    IRepository<Conversation, Guid> conversationRepository)
    : IRequestHandler<GetConversationsQuery, List<ConversationDto>>
{
    public async Task<List<ConversationDto>> Handle(GetConversationsQuery request, CancellationToken cancellationToken)
    {
        var userId = userContextService.GetUserId();
        if (userId is null || userId == Guid.Empty) throw new UnauthorizedAccessException("User is not authenticated.");

        var conversations = await conversationRepository
            .Where(x => x.UserId == userId)
            .OrderByDescending(x => x.CreatedAt ?? DateTime.MinValue)
            .ThenByDescending(x => x.Id)
            .ToListAsync(cancellationToken);

        return conversations.Select(x => new ConversationDto
        {
            Id = x.Id,
            Title = x.Title,
            UserId = x.UserId
        }).ToList();
    }
}
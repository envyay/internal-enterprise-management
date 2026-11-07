using Application.DTOs.Conversations;
using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Chat.GetConversations;

public class GetConversationsQuery : IRequest<List<ConversationDto>>
{
    
}
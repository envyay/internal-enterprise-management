using Application.DTOs.Conversations;
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Chat.CreateConversation;

public class CreateConversationCommandHandler(
    IRepository<Conversation, Guid> conversationRepository,
    IUserContextService userContextService,
    IRagService ragService,
    IUnitOfWork unitOfWork) : IRequestHandler<CreateConversationCommand, ConversationDto>
{
    public async Task<ConversationDto> Handle(CreateConversationCommand request, CancellationToken cancellationToken)
    {
        var userId = userContextService.GetUserId();
        if (userId is null || userId == Guid.Empty) throw new UnauthorizedAccessException("User is not authenticated.");

        var title = request.Title;
        if (string.IsNullOrWhiteSpace(title) || title == "New Chat")
        {
            if (!string.IsNullOrWhiteSpace(request.Query))
            {
                title = await ragService.GenerateTitle(request.Query, cancellationToken);
            }
            else
            {
                title = "New Chat";
            }
        }

        var conversation = Conversation.Create(userId, title, request.Id);
        await conversationRepository.AddAsync(conversation, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);

        return new ConversationDto
        {
            Id = conversation.Id,
            UserId = conversation.UserId,
            Title = conversation.Title
        };
    }
}

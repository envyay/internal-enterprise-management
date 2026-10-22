using Application.DTOs.Chats;
using Infrastructure.Services;
using MediatR;

namespace Application.UseCases.Chat;

public class ChatCommandHandler(IUserContextService userContextService, IRagService ragService) : IStreamRequestHandler<ChatCommand, ChatStreamChunkDto>
{
    public IAsyncEnumerable<ChatStreamChunkDto> Handle(ChatCommand request, CancellationToken cancellationToken)
    {
        var userId = userContextService.GetUserId();
        if (userId is null || userId == Guid.Empty) throw new UnauthorizedAccessException("User is not authenticated.");
        var res = ragService.Chat(request.Query ?? "", request.ThreadId, request.DocumentIds ?? [], userId, cancellationToken: cancellationToken);
    }
}
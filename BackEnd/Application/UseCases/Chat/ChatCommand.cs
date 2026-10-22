using Application.DTOs.Chats;
using MediatR;

namespace Application.UseCases.Chat;

public class ChatCommand : IStreamRequest<ChatStreamChunkDto>
{
    public Guid UserId { get; set; }
    public string? Query { get; set; }
    public Guid ThreadId { get; set; }
    public List<Guid>? DocumentIds { get; set; }
}
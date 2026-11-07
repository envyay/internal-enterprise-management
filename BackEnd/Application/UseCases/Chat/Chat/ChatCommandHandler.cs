using System.Runtime.CompilerServices;
using System.Text.Json;
using Application.DTOs.Chats;
using Application.DTOs.Documents;
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using MediatR;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Constants;

namespace Application.UseCases.Chat;

public class ChatCommandHandler(
    IUserContextService userContextService,
    IRepository<User, Guid> userRepository,
    IRepository<Document, Guid> documentRepository,
    IRagService ragService) : IStreamRequestHandler<ChatCommand, ChatStreamChunkDto>
{
    public async IAsyncEnumerable<ChatStreamChunkDto> Handle(ChatCommand request,
        [EnumeratorCancellation] CancellationToken cancellationToken)
    {
        var userId = userContextService.GetUserId();
        if (userId is null || userId == Guid.Empty) throw new UnauthorizedAccessException("User is not authenticated.");

        var user = await userRepository
            .Where(x => x.Id.Equals(userId.Value))
            .Include(x => x.Departments)
            .Include(x => x.Tickets)
            .FirstOrDefaultAsync(cancellationToken);
        if (user == null) throw new Exception("User not found.");

        var departmentIds = user.Departments.Select(x => x.Id).ToList();
        var ticketIds = user.Tickets.Select(x => x.Id).ToList();

        var documents = await documentRepository
            .Where(x => x.ReferenceType == DocumentReferenceType.Public
            || (x.ReferencedId.HasValue && departmentIds.Contains(x.ReferencedId.Value) &&
                        x.ReferenceType == DocumentReferenceType.Department)
            || (x.ReferencedId.HasValue && ticketIds.Contains(x.ReferencedId.Value) &&
                     x.ReferenceType == DocumentReferenceType.Ticket))
            .Select(x => x.Id)
            .ToListAsync(cancellationToken);

        var stream = await ragService.Chat(
            request.Query ?? string.Empty,
            request.ThreadId,
            documents,
            cancellationToken: cancellationToken);

        using var reader = new StreamReader(stream);

        while (!cancellationToken.IsCancellationRequested &&
               await reader.ReadLineAsync(cancellationToken) is { } line)
        {
            if (string.IsNullOrWhiteSpace(line)) continue;

            if (line.StartsWith("data: "))
            {
                var json = line["data: ".Length..].Trim();
                if (string.IsNullOrEmpty(json)) continue;
                ChatStreamChunkDto? chunk = null;
                try
                {
                    chunk = JsonSerializer.Deserialize<ChatStreamChunkDto>(json);
                }
                catch
                {
                    // Ignore non-json or malformed chunks
                }

                if (chunk != null)
                {
                    yield return chunk;

                    if (chunk.Type == "done")
                    {
                        yield break;
                    }
                }
            }
        }
    }
}
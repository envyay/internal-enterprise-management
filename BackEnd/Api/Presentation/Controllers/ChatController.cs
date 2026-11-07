using System.Text.Encodings.Web;
using System.Text.Json;
using Application.UseCases.Chat;
using Application.UseCases.Chat.CreateChatMessage;
using Application.UseCases.Chat.CreateConversation;
using Application.UseCases.Chat.DeleteConversation;
using Application.UseCases.Chat.GetChatMessages;
using Application.UseCases.Chat.GetConversations;
using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SharedKernel.Constants;

namespace Api.Presentation.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ChatController(ISender sender) : ControllerBase
{
    private static readonly JsonSerializerOptions JsonOptions = new()
    {
        Encoder = JavaScriptEncoder.UnsafeRelaxedJsonEscaping
    };

    [Authorize(Policy = AppPolicy.Chat)]
    [HttpPost("Chat")]
    public async Task Chat(ChatCommand request, CancellationToken cancellationToken)
    {
        Response.ContentType = "text/event-stream; charset=utf-8";
        Response.Headers.Append("Cache-Control", "no-cache");
        Response.Headers.Append("Connection", "keep-alive");
        await foreach (var chunk in sender.CreateStream(request, cancellationToken))
        {
            var json = JsonSerializer.Serialize(chunk, JsonOptions);
            await Response.WriteAsync($"data: {json}\n\n", cancellationToken);
            await Response.Body.FlushAsync(cancellationToken);
        }
    }

    
    [Authorize(Policy = AppPolicy.GetConversations)]
    [HttpGet("Conversations")]
    public async Task<IActionResult> GetConversations()
    {
        var conversations = await sender.Send(new GetConversationsQuery());
        return Ok(conversations);
    }
    
    [Authorize(Policy = AppPolicy.GetChatMessagesByConversationId)]
    [HttpGet("{id:guid}/ChatMessages")]
    public async Task<IActionResult> GetChatMessagesByConversationId(Guid id)
    {
        var comment = await sender.Send(new GetChatMessagesByConversationIdQuery{ConversationId = id});
        return Ok(comment);
    }

    [Authorize(Policy = AppPolicy.CreateConversation)]
    [HttpPost("CreateConversation")]
    public async Task<IActionResult> CreateConversation(CreateConversationCommand request)
    {
        var conversation = await sender.Send(request);
        return Ok(conversation);
    }
    
    [Authorize(Policy = AppPolicy.CreateChatMessage)]
    [HttpPost("CreateChatMessage")]
    public async Task<IActionResult> CreateChatMessage(CreateChatMessageCommand request)
    {
        var chatMessage = await sender.Send(request);
        return Ok(chatMessage);
    }

    [Authorize(Policy = AppPolicy.DeleteConversationById)]
    [HttpDelete("{id:guid}")]
    public async Task<IActionResult> DeleteById(Guid id)
    {
        var success = await sender.Send(new DeleteConversationCommand{Id = id});
        return Ok(success);
    }
}
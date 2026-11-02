using System.Text.Encodings.Web;
using System.Text.Json;
using Application.UseCases.Chat;
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
}
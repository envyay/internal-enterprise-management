using System.Text.Json.Serialization;

namespace Application.DTOs.Chats;

public class ChatStreamChunkDto
{
    [JsonPropertyName("type")]
    public string Type { get; set; } = string.Empty;
    
    [JsonPropertyName("content")]
    public string? Content { get; set; }
    
    [JsonPropertyName("thread_id")]
    public string? ThreadId { get; set; }
}
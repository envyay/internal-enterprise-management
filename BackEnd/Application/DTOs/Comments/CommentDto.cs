namespace Application.DTOs.Comments;

public class CommentDto
{
    public Guid Id { get; set; }
    public string Content { get; set; }
    public Guid UserId { get; set; }
    public Guid TicketId { get; set; }
}
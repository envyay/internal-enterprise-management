using Application.DTOs.Comments;
using Application.DTOs.Users;

namespace Application.DTOs.Tickets;

public class TicketDto
{
    public Guid Id { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public List<CommentDto> Comments { get; set; }
    public Guid ProjectId { get; set; }
    public Guid TicketStatusId { get; set; }
    public List<UserDto> Users { get; set; }
}
using Application.DTOs.Projects;
using Application.DTOs.Tickets;

namespace Application.DTOs.TicketStatuses;

public class TicketStatusDto
{
    public Guid Id { get; set; }
    public Guid ProjectId { get; set; }
    public string Name { get; set; }
    public List<TicketDto> Tickets { get; set; }
    
}
using Application.DTOs.TicketStatuses;
using Application.DTOs.Users;
using Domain.Aggregates;
using SharedKernel.Constants;

namespace Application.DTOs.Projects;

public class ProjectDto
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public ProjectStatus Status { get; set; }
    public DateTime? StartDate { get; set; }
    public DateTime? EndDate { get; set; }
    public List<UserDto> Users { get; set; }
    public List<TicketStatusDto> TicketStatuses { get; set; }
}
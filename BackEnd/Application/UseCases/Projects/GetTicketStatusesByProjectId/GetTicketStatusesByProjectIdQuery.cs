using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Projects.GetTicketStatusesByProjectId;

public class GetTicketStatusesByProjectIdQuery : IRequest<List<TicketStatus>>
{
    public Guid ProjectId { get; set; }
}
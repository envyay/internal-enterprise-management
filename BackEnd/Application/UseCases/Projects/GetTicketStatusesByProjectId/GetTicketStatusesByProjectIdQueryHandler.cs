using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Projects.GetTicketStatusesByProjectId;

public class GetTicketStatusesByProjectIdQueryHandler(IRepository<TicketStatus, Guid> ticketStatusRepository) : IRequestHandler<GetTicketStatusesByProjectIdQuery, List<TicketStatus>>
{
    public async Task<List<TicketStatus>> Handle(GetTicketStatusesByProjectIdQuery request, CancellationToken cancellationToken)
    {
        var ticketStatuses = await ticketStatusRepository.Where(x => x.ProjectId.Equals(request.ProjectId))
            .ToListAsync(cancellationToken);
        return ticketStatuses;
    }
}
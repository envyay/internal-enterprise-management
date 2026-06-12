using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.ticketStatuses.GetTicketStatuses;

public class GetTicketStatusesQueryHandler(IRepository<TicketStatus, Guid> ticketStatusRepository) : IRequestHandler<GetTicketStatusesQuery, List<TicketStatus>>
{
    public Task<List<TicketStatus>> Handle(GetTicketStatusesQuery request, CancellationToken cancellationToken)
    {
        var ticketStatus = ticketStatusRepository.GetAll(cancellationToken);
        return ticketStatus;
    }
}
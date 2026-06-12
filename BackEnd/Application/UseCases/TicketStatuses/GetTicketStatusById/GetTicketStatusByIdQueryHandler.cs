using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;

namespace Application.UseCases.TicketStatuses.GetTicketStatusById;

public class GetTicketStatusByIdQueryHandler(IRepository<TicketStatus, Guid> ticketStatusRepository) : IRequestHandler<GetTicketStatusByIdQuery, TicketStatus?>
{
    public async Task<TicketStatus?> Handle(GetTicketStatusByIdQuery request, CancellationToken cancellationToken)
    {
        var ticketStatus = await ticketStatusRepository.GetByIdAsync(request.Id);
        return ticketStatus;
    }
}
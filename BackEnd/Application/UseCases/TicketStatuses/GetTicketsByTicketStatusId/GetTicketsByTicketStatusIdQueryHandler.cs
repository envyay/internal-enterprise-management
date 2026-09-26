using Application.DTOs.Tickets;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.TicketStatuses.GetTicketsByTicketStatusId;

public class GetTicketsByTicketStatusIdQueryHandler(IRepository<Ticket, Guid> ticketRepository)
    : IRequestHandler<GetTicketsByTicketStatusIdQuery, List<TicketDto>>
{
    public Task<List<TicketDto>> Handle(GetTicketsByTicketStatusIdQuery request, CancellationToken cancellationToken)
    {
        var tickets = ticketRepository.Where(t => request.TicketStatusId.Equals(t.TicketStatusId))
            .Select(t => new TicketDto
            {
                Id = t.Id,
                Title = t.Title,
                Description = t.Description,
            }).ToListAsync(cancellationToken);
        return tickets;
    }
}
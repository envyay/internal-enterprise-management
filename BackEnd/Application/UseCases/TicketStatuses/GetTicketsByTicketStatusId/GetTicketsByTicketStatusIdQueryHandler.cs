using Application.DTOs.Tickets;
using Application.DTOs.Users;
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
            .Include(t => t.Users)
            .Select(t => new TicketDto
            {
                Id = t.Id,
                Title = t.Title,
                Description = t.Description,
                TicketStatusId = t.TicketStatusId,
                Users = t.Users.Select(u => new UserDto
                {
                    Id = u.Id,
                    FullName = u.FullName,
                    Email = u.Email,
                    Status = u.Status,
                }).ToList(),
            }).ToListAsync(cancellationToken);
        return tickets;
    }
}
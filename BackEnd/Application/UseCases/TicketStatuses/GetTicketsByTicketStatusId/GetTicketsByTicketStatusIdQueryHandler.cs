using Application.DTOs.Tickets;
using Application.DTOs.Users;
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.TicketStatuses.GetTicketsByTicketStatusId;

public class GetTicketsByTicketStatusIdQueryHandler(
    IRepository<Ticket, Guid> ticketRepository,
    IUserContextService userContextService
) : IRequestHandler<GetTicketsByTicketStatusIdQuery, List<TicketDto>>
{
    public async Task<List<TicketDto>> Handle(
        GetTicketsByTicketStatusIdQuery request,
        CancellationToken cancellationToken
    )
    {
        var userId = userContextService.GetUserId();
        if (userId == null) throw new UnauthorizedAccessException();

        var tickets = await ticketRepository.Where(x =>
                request.TicketStatusId.Equals(x.TicketStatusId) &&
                (x.Users.Any(u => u.Id == userId) || x.CreatedBy == userId)
            )
            .Include(t => t.Users)
            .ToListAsync(cancellationToken);

        return tickets.Select(t => new TicketDto
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
        }).ToList();
    }
}
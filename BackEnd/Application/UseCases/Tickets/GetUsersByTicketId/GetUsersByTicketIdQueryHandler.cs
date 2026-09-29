using Application.DTOs.Tickets;
using Application.DTOs.Users;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Tickets.GetUsersByTicketId;

public class GetUsersByTicketIdQueryHandler(IRepository<User, Guid> userRepository)
    : IRequestHandler<GetUsersByTicketIdQuery, List<UserDto>>
{
    public async Task<List<UserDto>> Handle(GetUsersByTicketIdQuery request, CancellationToken cancellationToken)
    {
        var users = await userRepository.Where(p => p.Tickets.Any(t => t.Id.Equals(request.TicketId)))
            .Include(p => p.Tickets)
            .ToListAsync(cancellationToken);
        return users.Select(x => new UserDto
        {
            Id = x.Id,
            FullName = x.FullName,
            Email = x.Email,
            Status = x.Status
        }).ToList();
    }
}
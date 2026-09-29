using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Tickets.SetUsersInTicket;

public class SetUsersInTicketCommandHandler(
    IRepository<User, Guid> userRepository,
    IRepository<Ticket, Guid> ticketRepository,
    IUnitOfWork unitOfWork) : IRequestHandler<SetUsersInTicketCommand, bool>
{
    public async Task<bool> Handle(SetUsersInTicketCommand request, CancellationToken cancellationToken)
    {
        var users = await userRepository.Where(u => request.UserIds.Contains(u.Id)).ToListAsync(cancellationToken);
        var ticket = await ticketRepository.Where(t => request.Id.Equals(t.Id)).Include(u => u.Users)
            .FirstOrDefaultAsync(cancellationToken);
        if (ticket == null) return false;
        ticket.SetUsers(users);
        await ticketRepository.UpdateAsync(ticket);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
        
    }
}
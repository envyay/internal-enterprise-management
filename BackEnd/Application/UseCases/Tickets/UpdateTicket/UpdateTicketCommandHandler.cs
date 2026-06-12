using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Tickets.UpdateTicket;

public class UpdateTicketCommandHandler(IRepository<Ticket, Guid> ticketRepository, IRepository<User, Guid> userRepository, IUnitOfWork unitOfWork) : IRequestHandler<UpdateTicketCommand, bool>
{
    public async Task<bool> Handle(UpdateTicketCommand request, CancellationToken cancellationToken)
    {
        var users = await userRepository.Where(x => request.UserIds.Contains(x.Id)).ToListAsync(cancellationToken);
        var ticket = await ticketRepository.GetByIdAsync(request.Id, cancellationToken);
        if (ticket == null) return false;
        ticket.Update(request.TicketStatusId, request.Title, request.Description, users);
        await ticketRepository.UpdateAsync(ticket);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
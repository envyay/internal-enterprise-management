using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Tickets.UpdateTicketByTicketStatus;

public class UpdateTicketByTicketStatusCommandHandler(IRepository<Ticket, Guid> ticketRepository, IUnitOfWork unitOfWork) : IRequestHandler<UpdateTicketByTicketStatusCommand, bool>
{
    public async Task<bool> Handle(UpdateTicketByTicketStatusCommand request, CancellationToken cancellationToken)
    {
        var ticket = await ticketRepository.GetByIdAsync(request.Id, cancellationToken);
        if (ticket == null) return false;
        ticket.SetTicketStatus(request.TicketStatusId);
        await ticketRepository.UpdateAsync(ticket);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
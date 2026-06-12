using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Tickets.DeleteTicket;

public class DeleteTicketCommandByIdHandler(IRepository<Ticket, Guid> ticketRepository, IUnitOfWork unitOfWork) : IRequestHandler<DeleteTicketCommandById, bool>
{
    public async Task<bool> Handle(DeleteTicketCommandById request, CancellationToken cancellationToken)
    {
        var ticket = await ticketRepository.GetByIdAsync(request.Id, cancellationToken);
        if (ticket == null) return false;
        await ticketRepository.DeleteAsync(ticket);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
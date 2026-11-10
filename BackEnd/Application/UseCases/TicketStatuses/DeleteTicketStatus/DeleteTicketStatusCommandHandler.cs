using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Exceptions;

namespace Application.UseCases.TicketStatuses.DeleteTicketStatus;

public class DeleteTicketStatusCommandHandler(
    IRepository<TicketStatus, Guid> ticketStatusRepository,
    IRepository<Ticket, Guid> ticketRepository,
    IUnitOfWork unitOfWork
) : IRequestHandler<DeleteTicketStatusCommand, bool>
{
    public async Task<bool> Handle(DeleteTicketStatusCommand request, CancellationToken cancellationToken)
    {
        var tickets = await ticketRepository
            .Where(x => x.TicketStatusId == request.Id)
            .CountAsync(cancellationToken: cancellationToken);

        if (tickets > 0)
        {
            throw new ConflictException("Cannot delete ticket status because it is currently assigned to existing tickets.");
        }

        var ticketStatus = await ticketStatusRepository.GetByIdAsync(request.Id, cancellationToken);
        if (ticketStatus == null) return false;

        await ticketStatusRepository.DeleteAsync(ticketStatus);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
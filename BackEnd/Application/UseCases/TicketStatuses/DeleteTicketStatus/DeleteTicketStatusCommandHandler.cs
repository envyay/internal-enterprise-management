using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.TicketStatuses.DeleteTicketStatus;

public class DeleteTicketStatusCommandHandler(IRepository<TicketStatus, Guid> ticketStatusRepository, IUnitOfWork unitOfWork) : IRequestHandler<DeleteTicketStatusCommand, bool>
{
    public async Task<bool> Handle(DeleteTicketStatusCommand request, CancellationToken cancellationToken)
    {
        var ticketStatus = await ticketStatusRepository.GetByIdAsync(request.Id, cancellationToken);
        if (ticketStatus == null) return false;
        
        await ticketStatusRepository.DeleteAsync(ticketStatus);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
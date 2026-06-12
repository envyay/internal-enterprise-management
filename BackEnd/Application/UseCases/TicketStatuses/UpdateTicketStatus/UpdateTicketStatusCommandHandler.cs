using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.TicketStatuses.UpdateTicketStatus;

public class UpdateTicketStatusCommandHandler(IRepository<TicketStatus, Guid> ticketStatusRepository, IUnitOfWork unitOfWork) : IRequestHandler<UpdateTicketStatusCommand, bool>
{
    public async Task<bool> Handle(UpdateTicketStatusCommand request, CancellationToken cancellationToken)
    {
        var ticketStatus = await ticketStatusRepository.GetByIdAsync(request.Id, cancellationToken);
        if (ticketStatus == null) return false;
        ticketStatus.Update(request.Name);
        await ticketStatusRepository.UpdateAsync(ticketStatus);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
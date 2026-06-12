using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.TicketStatuses.CreateTicketStatus;

public class CreateTicketStatusCommandHandler(IRepository<TicketStatus, Guid> ticketStatusRepository, IUnitOfWork unitOfWork) : IRequestHandler<CreateTicketStatusCommand, Guid>
{
    public async Task<Guid> Handle(CreateTicketStatusCommand request, CancellationToken cancellationToken)
    {
        var ticketStatus = TicketStatus.Create(request.ProjectId, request.Name);
        await ticketStatusRepository.AddAsync(ticketStatus, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return ticketStatus.Id;
    }
}
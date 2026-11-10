using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.TicketStatuses.CreateTicketStatus;

public class CreateTicketStatusCommandHandler(
    IRepository<TicketStatus, Guid> ticketStatusRepository,
    IUnitOfWork unitOfWork,
    IUserContextService userContextService
) : IRequestHandler<CreateTicketStatusCommand, Guid>
{
    public async Task<Guid> Handle(CreateTicketStatusCommand request, CancellationToken cancellationToken)
    {
        var userId = userContextService.GetUserId();
        if (userId == null) throw new UnauthorizedAccessException();

        var ticketStatus = TicketStatus.Create(request.ProjectId, (Guid)userId, request.Name);
        await ticketStatusRepository.AddAsync(ticketStatus, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return ticketStatus.Id;
    }
}
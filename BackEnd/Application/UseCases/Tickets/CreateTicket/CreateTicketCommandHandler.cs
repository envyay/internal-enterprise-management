using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.EntityFrameworkCore;

namespace Application.UseCases.Tickets.CreateTicket;

public class CreateTicketCommandHandler(
    IRepository<Ticket, Guid> ticketRepository,
    IRepository<User, Guid> userRepository,
    IUserContextService userContextService,
    IUnitOfWork unitOfWork
) : IRequestHandler<CreateTicketCommand, Guid>
{
    public async Task<Guid> Handle(CreateTicketCommand request, CancellationToken cancellationToken)
    {
        var userId = userContextService.GetUserId();
        if (userId == null) throw new UnauthorizedAccessException();

        var users = await userRepository.Where(x => request.UserIds.Contains(x.Id)).ToListAsync(cancellationToken);
        var ticket = Ticket.Create(request.TicketStatusId, (Guid)userId, request.Title, request.Description, users);
        await ticketRepository.AddAsync(ticket, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return ticket.Id;
    }
}
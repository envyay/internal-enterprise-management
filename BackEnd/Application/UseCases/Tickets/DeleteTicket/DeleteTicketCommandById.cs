using MediatR;

namespace Application.UseCases.Tickets.DeleteTicket;

public class DeleteTicketCommandById : IRequest<bool> 
{
    public Guid Id { get; set; }
}
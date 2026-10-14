using Application.DTOs.Documents;
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using MediatR;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Constants;

namespace Application.UseCases.Documents.GetDocumentsByTickets;

public class GetDocumentsByTicketsQueryHandler(
    IRepository<Document, Guid> documentRepository,
    IRepository<User, Guid> userRepository,
    IUserContextService userContextService) : IRequestHandler<GetDocumentsByTicketsQuery, List<DocumentDto>>
{
    public async Task<List<DocumentDto>> Handle(GetDocumentsByTicketsQuery request, CancellationToken cancellationToken)
    {
        var userId = userContextService.GetUserId();
        if (userId is null || userId == Guid.Empty) throw new UnauthorizedAccessException("User is not authenticated.");
        
        var user = await userRepository
            .Where(x => x.Id.Equals(userId.Value)).Include(x => x.Tickets)
            .FirstOrDefaultAsync(cancellationToken);
        if (user == null) throw new Exception("User not found.");
        
        var ticketIds = user.Tickets.Select(x => x.Id).ToList();
        
        var documents = await documentRepository
            .Where(x => x.ReferencedId.HasValue && ticketIds.Contains(x.ReferencedId.Value) && x.ReferenceType == DocumentReferenceType.Ticket)
            .Select(x => new DocumentDto
            {
                Id = x.Id,
                Name = x.Name,
                BucketName = x.BucketName,
                ObjectName = x.ObjectName,
                ReferencedId = x.ReferencedId,
                ReferenceType = x.ReferenceType,
                Status = x.Status,
                Size = x.Size,
                Extension = x.Extension,
            })
            .ToListAsync(cancellationToken);
        
        return documents;
    }
}
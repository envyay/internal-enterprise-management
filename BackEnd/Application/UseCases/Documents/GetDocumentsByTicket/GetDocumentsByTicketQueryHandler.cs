using Application.DTOs.Documents;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Constants;

namespace Application.UseCases.Documents.GetDocumentsByTicket;

public class GetDocumentsByTicketQueryHandler(IRepository<Document, Guid> documentRepository) : IRequestHandler<GetDocumentsByTicketQuery, List<DocumentDto>>
{
    public async Task<List<DocumentDto>> Handle(GetDocumentsByTicketQuery request, CancellationToken cancellationToken)
    {
        var docs = await documentRepository.Where(x =>
                x.ReferencedId.Equals(request.TicketId) && x.ReferenceType == DocumentReferenceType.Ticket)
            .Select(x => new DocumentDto
            {
                Id = x.Id,
                Name = x.Name,
                ObjectName = x.ObjectName,
                ReferenceType = x.ReferenceType,
                BucketName = x.BucketName,
                ReferencedId = x.ReferencedId,
                Status = x.Status,
                Size = x.Size,
                Extension = x.Extension,
            })
            .ToListAsync(cancellationToken);
        return docs;
    }
}
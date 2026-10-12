using Application.DTOs.Documents;
using Domain.Aggregates;
using Infrastructure.Repository;
using MediatR;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Constants;

namespace Application.UseCases.Documents.GetDocumentsByDepartment;

public class GetDocumentsByDepartmentQueryHandler(IRepository<Document, Guid> documentRepository)
    : IRequestHandler<GetDocumentsByDepartmentQuery, List<DocumentDto>>
{
    public async Task<List<DocumentDto>> Handle(GetDocumentsByDepartmentQuery request,
        CancellationToken cancellationToken)
    {
        var docs = await documentRepository.Where(x =>
                x.ReferencedId.Equals(request.DepartmentId) && x.ReferenceType == DocumentReferenceType.Department)
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
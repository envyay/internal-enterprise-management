using Application.DTOs.Documents;
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using MediatR;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Constants;

namespace Application.UseCases.Documents.GetDocumentByDepartments;

public class GetDocumentByDepartmentsQueryHandler(
    IRepository<Document, Guid> documentRepository,
    IRepository<User, Guid> userRepository,
    IUserContextService userContextService) : IRequestHandler<GetDocumentsByDepartmentsQuery, List<DocumentDto>>
{
    public async Task<List<DocumentDto>> Handle(GetDocumentsByDepartmentsQuery request,
        CancellationToken cancellationToken)
    {
        var userId = userContextService.GetUserId();
        if (userId is null || userId == Guid.Empty) throw new UnauthorizedAccessException("User is not authenticated.");
        
        var user = await userRepository
            .Where(x => x.Id.Equals(userId.Value)).Include(x => x.Departments)
            .FirstOrDefaultAsync(cancellationToken);
        if (user == null) throw new Exception("User not found.");
        
        var departmentIds = user.Departments.Select(x => x.Id).ToList();
        
        var documents = await documentRepository
            .Where(x => x.ReferencedId.HasValue && departmentIds.Contains(x.ReferencedId.Value) && x.ReferenceType == DocumentReferenceType.Department)
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
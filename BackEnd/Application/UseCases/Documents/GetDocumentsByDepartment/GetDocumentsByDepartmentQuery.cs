using Application.DTOs.Documents;
using MediatR;

namespace Application.UseCases.Documents.GetDocumentsByDepartment;

public class GetDocumentsByDepartmentQuery : IRequest<List<DocumentDto>>
{
    public Guid DepartmentId { get; set; }
}
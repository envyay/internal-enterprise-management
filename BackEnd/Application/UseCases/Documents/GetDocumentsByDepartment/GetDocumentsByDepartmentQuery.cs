using Application.DTOs.Documents;
using Domain.Aggregates;
using MediatR;

namespace Application.UseCases.Documents.GetDocumentsByDepartment;

public class GetDocumentsByDepartmentQuery : IRequest<List<DocumentDto>>
{
    public Guid DepartmentId { get; set; }
}
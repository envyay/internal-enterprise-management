using Application.DTOs.Documents;
using MediatR;

namespace Application.UseCases.Documents.GetDocumentByDepartments;

public class GetDocumentsByDepartmentsQuery : IRequest<List<DocumentDto>>
{
    
}
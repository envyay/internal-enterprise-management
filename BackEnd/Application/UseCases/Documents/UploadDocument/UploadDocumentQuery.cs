using MediatR;

namespace Application.UseCases.Documents.UploadDocument;

public class UploadDocumentQuery : IRequest<string>
{
    public string ObjectName { get; set; }
    public int ExpiresInSeconds { get; set; }
}
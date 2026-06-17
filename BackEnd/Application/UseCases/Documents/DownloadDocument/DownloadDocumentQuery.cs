using MediatR;

namespace Application.UseCases.Documents.DownloadDocument;

public class DownloadDocumentQuery : IRequest<string>
{
    public string ObjectName { get; set; }
    public int ExpiresInSeconds { get; set; }
}
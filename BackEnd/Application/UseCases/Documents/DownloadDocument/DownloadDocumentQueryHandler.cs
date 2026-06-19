using Infrastructure.Services;
using MediatR;

namespace Application.UseCases.Documents.DownloadDocument;

public class DownloadDocumentQueryHandler(IStorageService storageService) : IRequestHandler<DownloadDocumentQuery, string>
{
    public async Task<string> Handle(DownloadDocumentQuery request, CancellationToken cancellationToken)
    {
        return await storageService.GetPresignedGetObjectAsync(request.ObjectName, request.ExpiresInSeconds);
    }
}
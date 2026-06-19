using Infrastructure.Services;
using MediatR;

namespace Application.UseCases.Documents.UploadDocument;

public class UploadDocumentQueryHandler(IStorageService storageService) : IRequestHandler<UploadDocumentQuery, string>
{
    public async Task<string> Handle(UploadDocumentQuery request, CancellationToken cancellationToken)
    {
       return await storageService.GetPresignedPutObjectAsync(request.ObjectName, request.ExpiresInSeconds);
        
    }
}
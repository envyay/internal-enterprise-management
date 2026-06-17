using Infrastructure.Services;
using MediatR;

namespace Application.UseCases.Documents.DeleteDocument;

public class DeleteDocumentCommandHandler(IStorageService storageService) : IRequestHandler<DeleteDocumentCommand, bool>
{
    public async Task<bool> Handle(DeleteDocumentCommand request, CancellationToken cancellationToken)
    {
        await storageService.DeleteAsync(request.ObjectName, cancellationToken);
        return true;
    }
}
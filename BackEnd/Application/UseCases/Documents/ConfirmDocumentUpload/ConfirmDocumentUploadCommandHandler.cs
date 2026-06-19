using System.Drawing;
using System.Text;
using Application.Abstractions.VectorStores;
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using MediatR;

namespace Application.UseCases.Documents.ConfirmDocumentUpload;

public class ConfirmDocumentUploadCommandHandler(IRepository<Document, Guid> documentRepository, IStorageService storageService) : IRequestHandler<ConfirmDocumentUploadCommand, bool>
{
    public async Task<bool> Handle(ConfirmDocumentUploadCommand request, CancellationToken cancellationToken)
    {
        var document = await documentRepository.GetByIdAsync(request.Id, cancellationToken);
        if (document == null) return false;
        var bytes = await storageService.GetObjectBytesAsync(document.ObjectName, cancellationToken);
        
        var text = Encoding.UTF8.GetString(bytes);
        var chunks = ChunkText(text, 1000);
        var points = new List<VectorDocument>();
        
    }
    
    private static List<string> ChunkText(string text, int maxLength)
    {
        var chunks = new List<string>();

        for (var i = 0; i < text.Length; i += maxLength)
        {
            var length = Math.Min(maxLength, text.Length - i);
            chunks.Add(text.Substring(i, length));
        }

        return chunks;
    }
}
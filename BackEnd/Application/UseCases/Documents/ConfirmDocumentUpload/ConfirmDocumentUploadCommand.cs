using MediatR;

namespace Application.UseCases.Documents.ConfirmDocumentUpload;

public class ConfirmDocumentUploadCommand : IRequest<bool>
{
    public Guid Id { get; set; }
}
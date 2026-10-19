using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.Services;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.Extensions.Options;
using SharedKernel.Options;

namespace Application.UseCases.Documents.CreateDocument;

public class CreateDocumentCommandHandler(
    IRepository<Document, Guid> documentRepository,
    IUnitOfWork unitOfWork,
    IOptions<MinioOptions> options,
    IRagService ragService
) : IRequestHandler<CreateDocumentCommand, Guid>
{
    private readonly MinioOptions _options = options.Value;

    public async Task<Guid> Handle(CreateDocumentCommand request, CancellationToken cancellationToken)
    {
        var document = Document.Create(
            request.ReferenceId,
            request.ReferenceType,
            request.Name,
            request.ObjectName,
            _options.BucketName,
            request.Size,
            request.Extension
        );

        await documentRepository.AddAsync(document, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
       
        _ = ragService.Ingest(
            document.BucketName,
            document.ObjectName,
            document.Id.ToString(),
            document.ReferencedId.ToString(),
            (int)document.ReferenceType,
            document.Name,
            cancellationToken
        );
        
        return document.Id;
    }
}
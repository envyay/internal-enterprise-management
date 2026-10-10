using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;
using Microsoft.Extensions.Options;
using SharedKernel.Options;

namespace Application.UseCases.Documents.CreateDocument;

public class CreateDocumentCommandHandler(
    IRepository<Document, Guid> documentRepository,
    IUnitOfWork unitOfWork,
    IOptions<MinioOptions> options
) : IRequestHandler<CreateDocumentCommand, Guid>
{
    private readonly MinioOptions _options = options.Value;

    public async Task<Guid> Handle(CreateDocumentCommand request, CancellationToken cancellationToken)
    {
        var document = Document.Create(
            request.ReferencedId,
            request.ReferenceType,
            request.Name,
            request.ObjectName,
            _options.BucketName,
            request.Size,
            request.Extension
        );
        
        await documentRepository.AddAsync(document, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return document.Id;
    }
}
using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Documents.CreateDocument;

public class CreateDocumentCommandHandler(IRepository<Document, Guid> documentRepository, IUnitOfWork unitOfWork) : IRequestHandler<CreateDocumentCommand, Guid>
{
    public async Task<Guid> Handle(CreateDocumentCommand request, CancellationToken cancellationToken)
    {
        var document = Document.Create(request.ReferencedId, request.ObjectName, request.Size, request.Extension);
        await documentRepository.AddAsync(document, cancellationToken);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return document.Id;
    }
}
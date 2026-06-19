using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Documents.UpdateDocument;

public class UpdateDocumentCommandHandler(IRepository<Document, Guid> documentRepository, IUnitOfWork unitOfWork) : IRequestHandler<UpdateDocumentCommand, bool>
{
    public async Task<bool> Handle(UpdateDocumentCommand request, CancellationToken cancellationToken)
    {
        var document = await documentRepository.GetByIdAsync(request.Id, cancellationToken);
        if (document == null) return false;
        document.Update(request.ObjectName);
        await documentRepository.UpdateAsync(document);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
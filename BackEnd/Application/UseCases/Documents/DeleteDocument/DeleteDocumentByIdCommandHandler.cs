using Domain.Aggregates;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Documents.DeleteDocument;

public class DeleteDocumentByIdCommandHandler(IRepository<Document, Guid> documentRepository, IUnitOfWork unitOfWork) : IRequestHandler<DeleteDocumentByIdCommand, bool>
{
    public async Task<bool> Handle(DeleteDocumentByIdCommand request, CancellationToken cancellationToken)
    {
        var document = await documentRepository.GetByIdAsync(request.Id, cancellationToken);
        if (document == null) return false;
        document.Delete();
        await documentRepository.UpdateAsync(document);
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return true;
    }
}
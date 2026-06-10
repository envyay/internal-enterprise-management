using Infrastructure.Data;
using MediatR;
using SharedKernel.Aggregate;

namespace Infrastructure.UnitOfWork;

public class UnitOfWork(ApplicationDbContext context, IMediator mediator) : IUnitOfWork
{
    public void Dispose()
    {
        context.Dispose();
    }

    public async Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
    {
        var domainEvents = context.ChangeTracker
            .Entries<IAggregateRoot>()
            .Select(x => x.Entity)
            .SelectMany(x => x.DomainEvents)
            .ToList();

        var res = await context.SaveChangesAsync(cancellationToken);

        foreach (var domainEvent in domainEvents)
        {
            await mediator.Publish(domainEvent, cancellationToken);
        }

        context.ChangeTracker.Entries<IAggregateRoot>()
            .Select(x => x.Entity)
            .ToList()
            .ForEach(x => x.ClearDomainEvents());

        return res;
    }
}
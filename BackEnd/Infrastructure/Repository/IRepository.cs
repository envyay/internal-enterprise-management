using System.Linq.Expressions;
using SharedKernel.Aggregate;

namespace Infrastructure.Repository;

public interface IRepository<TEntity, TId> where TEntity : AggregateRoot<TId> where TId : notnull
{
    public Task<TEntity?> GetByIdAsync(TId id, CancellationToken cancellationToken = default);
    public IQueryable<TEntity> Where(Expression<Func<TEntity, bool>> predicate);
    public Task<List<TEntity>> GetAll(CancellationToken cancellationToken = default);
    public Task AddAsync(TEntity entity, CancellationToken cancellationToken = default);
    public Task AddRangeAsync(IEnumerable<TEntity> entities, CancellationToken cancellationToken = default);
    public Task UpdateAsync(TEntity entity);
    public Task UpdateRangeAsync(IEnumerable<TEntity> entities);
    public Task DeleteAsync(TEntity entity);
    public Task DeleteRangeAsync(IEnumerable<TEntity> entities);
}
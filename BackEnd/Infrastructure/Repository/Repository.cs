using System.Linq.Expressions;
using Infrastructure.Data;
using Microsoft.EntityFrameworkCore;
using SharedKernel.Aggregate;

namespace Infrastructure.Repository;

public class Repository<TEntity, TId> : IRepository<TEntity, TId> where TEntity : AggregateRoot<TId> where TId : notnull
{
    private readonly DbSet<TEntity> _dbSet;

    public Repository(ApplicationDbContext context)
    {
        _dbSet = context.Set<TEntity>();
    }

    public Task<TEntity?> GetByIdAsync(TId id, CancellationToken cancellationToken = default)
    {
        return _dbSet.FirstOrDefaultAsync(x => x.Id.Equals(id), cancellationToken: cancellationToken);
    }

    public IQueryable<TEntity> Where(Expression<Func<TEntity, bool>> predicate)
    {
        return _dbSet.Where(predicate);
    }

    public Task<List<TEntity>> GetAll(CancellationToken cancellationToken = default)
    {
       return _dbSet.ToListAsync(cancellationToken);
    }

    public async Task AddAsync(TEntity entity, CancellationToken cancellationToken = default)
    {
        await _dbSet.AddAsync(entity, cancellationToken);
    }

    public async Task AddRangeAsync(IEnumerable<TEntity> entities, CancellationToken cancellationToken = default)
    {
        await _dbSet.AddRangeAsync(entities, cancellationToken);
    }

    public Task UpdateAsync(TEntity entity)
    {
        _dbSet.Update(entity);
        return Task.CompletedTask;
    }

    public Task UpdateRangeAsync(IEnumerable<TEntity> entities)
    {
        _dbSet.UpdateRange(entities);
        return Task.CompletedTask;
    }

    public Task DeleteAsync(TEntity entity)
    {
        _dbSet.Remove(entity);
        return Task.CompletedTask;
    }

    public Task DeleteRangeAsync(IEnumerable<TEntity> entities)
    {
        _dbSet.RemoveRange(entities);
        return Task.CompletedTask;
    }
}
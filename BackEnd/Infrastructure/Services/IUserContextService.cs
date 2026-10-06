namespace Infrastructure.Services;

public interface IUserContextService
{
    public Guid? GetUserId();
}
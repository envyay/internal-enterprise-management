using MediatR;

namespace Domain.Events.UserCreated;

public class UserCreatedHandler : INotificationHandler<UserCreated>
{
    public Task Handle(UserCreated notification, CancellationToken cancellationToken)
    {
        Console.WriteLine("aaa");
        return Task.CompletedTask;
    }
}
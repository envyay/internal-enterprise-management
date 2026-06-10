using MediatR;

namespace Domain.Events.DepartmentCreated;

public class DepartmentCreatedHandler : INotificationHandler<DepartmentCreated>
{
    public Task Handle(DepartmentCreated notification, CancellationToken cancellationToken)
    {
        Console.WriteLine(notification.DepartmentId);
        return Task.CompletedTask;
    }
}
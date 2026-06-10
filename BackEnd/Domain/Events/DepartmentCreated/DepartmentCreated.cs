using SharedKernel.Aggregate;

namespace Domain.Events.DepartmentCreated;

public class DepartmentCreated : IDomainEvent
{
    public Guid DepartmentId { get; set; }
}
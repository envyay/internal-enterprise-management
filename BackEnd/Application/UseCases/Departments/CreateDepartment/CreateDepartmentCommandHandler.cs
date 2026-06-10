using Domain.Aggregates;
using FluentValidation;
using Infrastructure.Repository;
using Infrastructure.UnitOfWork;
using MediatR;

namespace Application.UseCases.Departments.CreateDepartment;

public class CreateDepartmentCommandHandler(IRepository<Department, Guid> departmentRepository, IUnitOfWork unitOfWork, IValidator<CreateDepartmentCommand> validator) : IRequestHandler<CreateDepartmentCommand, Guid>
{
    public async Task<Guid> Handle(CreateDepartmentCommand request, CancellationToken cancellationToken)
    {
        var validateResult = await validator.ValidateAsync(request, cancellationToken);
        if (!validateResult.IsValid)
        {
            throw new ValidationException(validateResult.Errors);
        }
        
        var department = Department.Create(request.Name);
        await departmentRepository.AddAsync(department, cancellationToken);
        department.DepartmentCreated();
        await unitOfWork.SaveChangesAsync(cancellationToken);
        return department.Id;
    }
}
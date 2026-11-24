using Application.UseCases.Departments.CreateDepartment;
using FluentValidation;

namespace Application.UseCases.Departments.CreateDepartment;

public class CreateDepartmentCommandValidator : AbstractValidator<CreateDepartmentCommand>
{
    public CreateDepartmentCommandValidator()
    {
        RuleFor(x => x.Name)
            .NotEmpty()
            .WithMessage("Name is required")
            .MaximumLength(255)
            .WithMessage("Name must be less than 255 characters");

        RuleFor(x => x.Head)
            .MaximumLength(255)
            .WithMessage("Head must be less than 255 characters");
    }
}
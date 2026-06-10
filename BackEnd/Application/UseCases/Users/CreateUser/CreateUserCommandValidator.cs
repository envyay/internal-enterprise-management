using FluentValidation;

namespace Application.UseCases.Users.CreateUser;

public class CreateUserCommandValidator : AbstractValidator<CreateUserCommand>

{
    public CreateUserCommandValidator()
    {
        RuleFor(x => x.FullName)
            .NotEmpty()
            .WithMessage("Full Name is required")
            .MaximumLength(255)
            .WithMessage("Full Name must be less than 255 characters");
        
        RuleFor(x => x.Email)
            .NotEmpty()
            .WithMessage("Email is required")
            .EmailAddress()
            .WithMessage("Email is not valid");
    }
}
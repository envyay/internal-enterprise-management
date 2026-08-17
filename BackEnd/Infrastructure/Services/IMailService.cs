namespace Infrastructure.Services;

public interface IMailService
{
    Task SendEmailAsync(string to, string subject, string htmlContent);
}
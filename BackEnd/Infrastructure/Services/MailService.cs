using MailKit.Net.Smtp;
using MailKit.Security;
using Microsoft.Extensions.Options;
using MimeKit;
using SharedKernel.Options;

namespace Infrastructure.Services;

public class MailService(IOptions<SmtpOptions> options) : IMailService
{
    public async Task SendEmailAsync(
        string toEmail,
        string subject,
        string body)
    {
        var message = new MimeMessage();

        message.From.Add(
            new MailboxAddress(
                "IEM",
                options.Value.From
            )
        );

        message.To.Add(
            MailboxAddress.Parse(toEmail)
        );

        message.Subject = subject;

        message.Body = new TextPart("html")
        {
            Text = body
        };

        using var smtp = new SmtpClient();

        await smtp.ConnectAsync(
            options.Value.Host,
            options.Value.Port,
            SecureSocketOptions.StartTls
        );

        await smtp.AuthenticateAsync(
            options.Value.Username,
            options.Value.Password
        );

        await smtp.SendAsync(message);

        await smtp.DisconnectAsync(true);
    }
}
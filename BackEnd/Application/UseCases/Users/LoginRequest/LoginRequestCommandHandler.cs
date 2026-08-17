using Infrastructure.Services;
using MediatR;

namespace Application.UseCases.Users.LoginRequest;

public class LoginRequestCommandHandler(
    IOtpService otpService,
    IMailService mailService
) : IRequestHandler<LoginRequestCommand, bool>
{
    public async Task<bool> Handle(LoginRequestCommand request, CancellationToken cancellationToken)
    {
        var otp = await otpService.GenerateOtpAsync(request.Email);
        await mailService.SendEmailAsync(request.Email, "OTP", GetHtml(otp));
        return true;
    }
    
    private string GetHtml(string otp)
    {
        return $"<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n\n    <title>Your Login Code</title>\n\n    <style>\n        body {{\n            margin: 0;\n            padding: 0;\n            background-color: #f4f6f8;\n            font-family: Arial, Helvetica, sans-serif;\n            color: #333333;\n        }}\n\n        .container {{\n            width: 100%;\n            padding: 40px 0;\n        }}\n\n        .email {{\n            max-width: 520px;\n            margin: 0 auto;\n            background-color: #ffffff;\n            border-radius: 12px;\n            padding: 40px;\n            box-sizing: border-box;\n        }}\n\n        .logo {{\n            text-align: center;\n            font-size: 24px;\n            font-weight: bold;\n            margin-bottom: 30px;\n        }}\n\n        h1 {{\n            font-size: 24px;\n            margin-bottom: 15px;\n            text-align: center;\n        }}\n\n        .description {{\n            font-size: 15px;\n            line-height: 1.6;\n            text-align: center;\n            color: #666666;\n        }}\n\n        .otp {{\n            margin: 30px auto;\n            padding: 18px;\n            background-color: #f1f3f5;\n            border-radius: 8px;\n            text-align: center;\n            font-size: 32px;\n            font-weight: bold;\n            letter-spacing: 8px;\n            color: #222222;\n        }}\n\n        .expiry {{\n            text-align: center;\n            font-size: 14px;\n            color: #777777;\n        }}\n\n        .warning {{\n            margin-top: 25px;\n            padding: 15px;\n            background-color: #fff4e5;\n            border-radius: 8px;\n            font-size: 13px;\n            line-height: 1.5;\n            color: #7a4b00;\n        }}\n\n        .footer {{\n            margin-top: 30px;\n            text-align: center;\n            font-size: 12px;\n            color: #999999;\n            line-height: 1.5;\n        }}\n    </style>\n</head>\n\n<body>\n\n    <div class=\"container\">\n\n        <div class=\"email\">\n\n            <div class=\"logo\">\n                IEM Application\n            </div>\n\n            <h1>Your Login Code</h1>\n\n            <p class=\"description\">\n                Use the verification code below to sign in to your account.\n            </p>\n\n            <div class=\"otp\">\n                {otp}\n            </div>\n\n            <p class=\"expiry\">\n                This code will expire in <strong>5 minutes</strong>.\n            </p>\n\n            <div class=\"warning\">\n                If you did not request this code, you can safely ignore this email.\n                Never share your verification code with anyone.\n            </div>\n\n            <div class=\"footer\">\n                This is an automated email. Please do not reply to this message.\n                <br>\n                © 2026 My Application\n            </div>\n\n        </div>\n\n    </div>\n\n</body>\n</html>";
    }
}
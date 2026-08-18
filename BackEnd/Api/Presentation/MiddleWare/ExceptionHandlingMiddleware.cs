using Api.Presentation.DTOs;
using Api.Presentation.Exceptions;
using FluentValidation;
using ForbiddenException = Minio.Exceptions.ForbiddenException;

namespace Api.Presentation.MiddleWare;

public class ExceptionHandlingMiddleware(RequestDelegate next, ILogger<ExceptionHandlingMiddleware> logger)
{
    public async Task Invoke(HttpContext context)
    {
        try
        {
            await next(context);
        }
        catch (Exception ex)
        {
            logger.LogError(ex, ex.Message);
            await HandleExceptionAsync(context, ex);
        }
    }

    private static Task HandleExceptionAsync(HttpContext context, Exception exception)
    {
        context.Response.ContentType = "application/json";

        var statusCode = exception switch
        {
            ValidationException => StatusCodes.Status400BadRequest,
            UnauthorizedAccessException => StatusCodes.Status401Unauthorized,
            ForbiddenException => StatusCodes.Status403Forbidden,
            NotFoundException => StatusCodes.Status404NotFound,
            _ => StatusCodes.Status500InternalServerError
        };
        
        var errorCode = exception switch
        {
            HttpException httpException => httpException.ErrorCode,
            ValidationException => "VALIDATION",
            _ => new InternalServerErrorException("").ErrorCode,
        };

        context.Response.StatusCode = statusCode;

        var response = new ExceptionResponseDto(
            StatusCode: context.Response.StatusCode,
            Success: false,
            ErrorCode: errorCode,
            Message: exception.Message
        );

        return context.Response.WriteAsJsonAsync(response);
    }
}
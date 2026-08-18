using Api.Presentation.DTOs;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

namespace Api.Presentation.Filters;

public class ApiResponseFilter : IResultFilter
{
    public void OnResultExecuting(ResultExecutingContext context)
    {
        if (context.Result is not ObjectResult objectResult) return;

        var response = new ApiResponseDto<object>(
            StatusCode: objectResult.StatusCode ?? 0,
            Success: objectResult.StatusCode is >= 200 and < 300,
            Data: objectResult.Value
        );

        context.Result = new ObjectResult(response)
        {
            StatusCode = objectResult.StatusCode ?? 0,
        };
    }

    public void OnResultExecuted(ResultExecutedContext context)
    {
    }
}
namespace SharedKernel.Responses;

public class ApiResponse<T>
{
    public bool Success { get; set; }
    public int StatusCode { get; set; }
    public string? Message { get; set; }
    public T? Data { get; set; }
    public List<string>? Errors { get; set; }
    public DateTime Timestamp { get; set; } = DateTime.UtcNow;

    public static ApiResponse<T> Ok(T data, string? message = null, int statusCode = 200)
    {
        return new ApiResponse<T>
        {
            Success = true,
            StatusCode = statusCode,
            Message = message,
            Data = data
        };
    }

    public static ApiResponse<T> Fail(string message, int statusCode = 400, List<string>? errors = null)
    {
        return new ApiResponse<T>
        {
            Success = false,
            StatusCode = statusCode,
            Message = message,
            Errors = errors
        };
    }
}

public class ApiResponse : ApiResponse<object>
{
    public static ApiResponse Ok(string? message = null, int statusCode = 200)
    {
        return new ApiResponse
        {
            Success = true,
            StatusCode = statusCode,
            Message = message,
            Data = null
        };
    }

    public new static ApiResponse Fail(string message, int statusCode = 400, List<string>? errors = null)
    {
        return new ApiResponse
        {
            Success = false,
            StatusCode = statusCode,
            Message = message,
            Errors = errors,
            Data = null
        };
    }
}

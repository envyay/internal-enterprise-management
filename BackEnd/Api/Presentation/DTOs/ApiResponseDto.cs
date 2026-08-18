namespace Api.Presentation.DTOs;

public sealed record class ApiResponseDto<T>(
    int StatusCode,
    bool Success,
    T? Data
);
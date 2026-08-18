namespace Api.Presentation.DTOs;

public record ExceptionResponseDto(
    int StatusCode,
    bool Success,
    string? ErrorCode,
    string? Message
);
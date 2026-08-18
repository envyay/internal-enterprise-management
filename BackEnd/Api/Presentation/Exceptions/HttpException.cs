using System.Net;

namespace Api.Presentation.Exceptions;

public class HttpException(string message, HttpStatusCode statusCode, string errorCode) : Exception(message)
{
    public HttpStatusCode StatusCode { get; set; } = statusCode;
    public string ErrorCode { get; set; } = errorCode;
}

// Client Error 4xx
public class BadRequestException(string message, string errorCode = "BAD_REQUEST") : HttpException(message, HttpStatusCode.BadRequest, errorCode);

public class UnauthorizedException(string message, string errorCode = "UNAUTHORIZED") : HttpException(message, HttpStatusCode.Unauthorized, errorCode);

public class PaymentRequiredException(string message, string errorCode = "PAYMENT_REQUIRED") : HttpException(message, HttpStatusCode.PaymentRequired, errorCode);

public class ForbiddenException(string message, string errorCode = "FORBIDDEN") : HttpException(message, HttpStatusCode.Forbidden, errorCode);

public class NotFoundException(string message, string errorCode = "NOT_FOUND") : HttpException(message, HttpStatusCode.NotFound, errorCode);

public class MethodNotAllowedException(string message, string errorCode = "METHOD_NOT_ALLOWED") : HttpException(message, HttpStatusCode.MethodNotAllowed, errorCode);

public class NotAcceptableException(string message, string errorCode = "NOT_ACCEPTABLE") : HttpException(message, HttpStatusCode.NotAcceptable, errorCode);

public class ProxyAuthenticationRequiredException(string message, string errorCode = "PROXY_AUTHENTICATION_REQUIRED") : HttpException(message, HttpStatusCode.ProxyAuthenticationRequired, errorCode);

public class RequestTimeoutException(string message, string errorCode = "REQUEST_TIMEOUT") : HttpException(message, HttpStatusCode.RequestTimeout, errorCode);

public class ConflictException(string message, string errorCode = "CONFLICT") : HttpException(message, HttpStatusCode.Conflict, errorCode);

public class GoneException(string message, string errorCode = "GONE") : HttpException(message, HttpStatusCode.Gone, errorCode);

public class LengthRequiredException(string message, string errorCode = "LENGTH_REQUIRED") : HttpException(message, HttpStatusCode.LengthRequired, errorCode);

public class PreconditionFailedException(string message, string errorCode = "PRECONDITION_FAILED") : HttpException(message, HttpStatusCode.PreconditionFailed, errorCode);

public class RequestEntityTooLargeException(string message, string errorCode = "REQUEST_ENTITY_TOO_LARGE") : HttpException(message, HttpStatusCode.RequestEntityTooLarge, errorCode);

public class RequestUriTooLongException(string message, string errorCode = "REQUEST_URI_TOO_LONG") : HttpException(message, HttpStatusCode.RequestUriTooLong, errorCode);

public class UnsupportedMediaTypeException(string message, string errorCode = "UNSUPPORTED_MEDIA_TYPE") : HttpException(message, HttpStatusCode.UnsupportedMediaType, errorCode);

public class RequestedRangeNotSatisfiableException(string message, string errorCode = "REQUESTED_RANGE_NOT_SATISFIABLE") : HttpException(message, HttpStatusCode.RequestedRangeNotSatisfiable, errorCode);

public class ExpectationFailedException(string message, string errorCode = "EXPECTATION_FAILED") : HttpException(message, HttpStatusCode.ExpectationFailed, errorCode);

public class MisdirectedRequestException(string message, string errorCode = "MISDIRECTED_REQUEST") : HttpException(message, HttpStatusCode.MisdirectedRequest, errorCode);

public class UnprocessableEntityException(string message, string errorCode = "UNPROCESSABLE_ENTITY") : HttpException(message, HttpStatusCode.UnprocessableEntity, errorCode);

public class UnprocessableContentException(string message, string errorCode = "UNPROCESSABLE_CONTENT") : HttpException(message, HttpStatusCode.UnprocessableContent, errorCode);

public class LockedException(string message, string errorCode = "LOCKED") : HttpException(message, HttpStatusCode.Locked, errorCode);

public class FailedDependencyException(string message, string errorCode = "FAILED_DEPENDENCY") : HttpException(message, HttpStatusCode.FailedDependency, errorCode);

public class UpgradeRequiredException(string message, string errorCode = "UPGRADE_REQUIRED") : HttpException(message, HttpStatusCode.UpgradeRequired, errorCode);

public class PreconditionRequiredException(string message, string errorCode = "PRECONDITION_REQUIRED") : HttpException(message, HttpStatusCode.PreconditionRequired, errorCode);

public class TooManyRequestsException(string message, string errorCode = "TOO_MANY_REQUESTS") : HttpException(message, HttpStatusCode.TooManyRequests, errorCode);

public class RequestHeaderFieldsTooLargeException(string message, string errorCode = "REQUEST_HEADER_FIELDS_TOO_LARGE") : HttpException(message, HttpStatusCode.RequestHeaderFieldsTooLarge, errorCode);

public class UnavailableForLegalReasonsException(string message, string errorCode = "UNAVAILABLE_FOR_LEGAL_REASONS") : HttpException(message, HttpStatusCode.UnavailableForLegalReasons, errorCode);

// Server Error 5xx
public class InternalServerErrorException(string message, string errorCode = "INTERNAL_ERROR") : HttpException(message, HttpStatusCode.InternalServerError, errorCode);

public class NotImplementedException(string message, string errorCode = "NOT_IMPLEMENTED_EXCEPTION") : HttpException(message, HttpStatusCode.NotImplemented, errorCode);

public class BadGatewayException(string message, string errorCode = "BAD_GATEWAY") : HttpException(message, HttpStatusCode.BadGateway, errorCode);

public class ServiceUnavailableException(string message, string errorCode = "SERVICE_UNAVAILABLE") : HttpException(message, HttpStatusCode.ServiceUnavailable, errorCode);

public class GatewayTimeoutException(string message, string errorCode = "GATEWAY_TIMEOUT") : HttpException(message, HttpStatusCode.GatewayTimeout, errorCode);

public class HttpVersionNotSupportedException(string message, string errorCode = "HTTP_VERSION_NOT_SUPPORTED") : HttpException(message, HttpStatusCode.HttpVersionNotSupported, errorCode);

public class VariantAlsoNegotiatesException(string message, string errorCode = "VARIANT_ALSO_NEGOTIATES") : HttpException(message, HttpStatusCode.VariantAlsoNegotiates, errorCode);

public class InsufficientStorageException(string message, string errorCode = "INSUFFICIENT_STORAGE") : HttpException(message, HttpStatusCode.InsufficientStorage, errorCode);

public class LoopDetectedException(string message, string errorCode = "LOOP_DETECTED") : HttpException(message, HttpStatusCode.LoopDetected, errorCode);

public class NotExtendedException(string message, string errorCode = "NOT_EXTENDED") : HttpException(message, HttpStatusCode.NotExtended, errorCode);

public class NetworkAuthenticationRequiredException(string message, string errorCode = "NETWORK_AUTHENTICATION_REQUIRED") : HttpException(message, HttpStatusCode.NetworkAuthenticationRequired, errorCode);


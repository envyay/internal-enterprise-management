import 'package:enterprise_management/shared_kernel/result/result.dart';

typedef RequestHandlerDelegate<TResult> = Future<Result<TResult>> Function();

abstract interface class IPipelineBehavior {
  Future<Result<TResult>> handle<TRequest, TResult>(
    TRequest request,
    RequestHandlerDelegate<TResult> next,
  );
}

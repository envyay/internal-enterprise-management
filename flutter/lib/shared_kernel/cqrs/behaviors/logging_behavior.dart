import 'dart:developer';

import 'package:enterprise_management/shared_kernel/cqrs/pipeline_behavior.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class LoggingBehavior implements IPipelineBehavior {
  const LoggingBehavior();

  @override
  Future<Result<TResult>> handle<TRequest, TResult>(
    TRequest request,
    RequestHandlerDelegate<TResult> next,
  ) async {
    final requestName = request.runtimeType.toString();
    log('[CQRS] Handling $requestName');
    final stopwatch = Stopwatch()..start();

    try {
      final result = await next();
      stopwatch.stop();
      log('[CQRS] $requestName completed in ${stopwatch.elapsedMilliseconds}ms -> $result');
      return result;
    } catch (e, st) {
      stopwatch.stop();
      log('[CQRS] $requestName failed after ${stopwatch.elapsedMilliseconds}ms: $e', stackTrace: st);
      rethrow;
    }
  }
}

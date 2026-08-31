import 'package:enterprise_management/shared_kernel/cqrs/pipeline_behavior.dart';
import 'package:enterprise_management/shared_kernel/cqrs/validator.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

class ValidationBehavior implements IPipelineBehavior {
  const ValidationBehavior(this._validatorProvider);

  final List<IValidator<dynamic>> Function(dynamic request) _validatorProvider;

  @override
  Future<Result<TResult>> handle<TRequest, TResult>(
    TRequest request,
    RequestHandlerDelegate<TResult> next,
  ) async {
    final validators = _validatorProvider(request);
    final errors = <String>[];

    for (final validator in validators) {
      if (validator.canValidate(request)) {
        final resultErrors = await validator.validate(request as dynamic);
        errors.addAll(resultErrors);
      }
    }

    if (errors.isNotEmpty) {
      return Result.failure(AppFailure.validation(errors));
    }

    return next();
  }
}

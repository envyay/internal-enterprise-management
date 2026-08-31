import 'package:dio/dio.dart';
import 'package:enterprise_management/shared_kernel/cqrs/behaviors/logging_behavior.dart';
import 'package:enterprise_management/shared_kernel/cqrs/behaviors/validation_behavior.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:enterprise_management/shared_kernel/cqrs/command_handler.dart';
import 'package:enterprise_management/shared_kernel/cqrs/pipeline_behavior.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query.dart';
import 'package:enterprise_management/shared_kernel/cqrs/query_handler.dart';
import 'package:enterprise_management/shared_kernel/cqrs/validator.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mediator.g.dart';

@Riverpod(keepAlive: true)
Mediator mediator(Ref ref) {
  final mediator = Mediator(ref);
  mediator.init();
  return mediator;
}

class Mediator {
  Mediator(this.ref);

  final Ref ref;
  final List<ICommandHandler<dynamic, dynamic>> _commandHandlers = [];
  final List<IQueryHandler<dynamic, dynamic>> _queryHandlers = [];
  final List<IValidator<dynamic>> _validators = [];
  final List<IPipelineBehavior> _behaviors = [];

  final Map<Type, ICommandHandler<dynamic, dynamic>> _cachedCommandHandlers = {};
  final Map<Type, IQueryHandler<dynamic, dynamic>> _cachedQueryHandlers = {};
  final Map<Type, List<IValidator<dynamic>>> _cachedValidators = {};

  void init() {
    _behaviors.clear();
    _commandHandlers.clear();
    _queryHandlers.clear();
    _validators.clear();
    _cachedCommandHandlers.clear();
    _cachedQueryHandlers.clear();
    _cachedValidators.clear();

    // Default behaviors: Logging & Validation
    addBehavior(const LoggingBehavior());
    addBehavior(ValidationBehavior(getValidators));
  }

  void registerCommandHandler<TCommand extends ICommand<TResult>, TResult>(
    ICommandHandler<TCommand, TResult> handler,
  ) {
    assert(
      !_commandHandlers.any((h) => h is ICommandHandler<TCommand, TResult>),
      'A command handler for $TCommand is already registered.',
    );
    _commandHandlers.add(handler);
    _cachedCommandHandlers.clear();
  }

  void registerQueryHandler<TQuery extends IQuery<TResult>, TResult>(
    IQueryHandler<TQuery, TResult> handler,
  ) {
    assert(
      !_queryHandlers.any((h) => h is IQueryHandler<TQuery, TResult>),
      'A query handler for $TQuery is already registered.',
    );
    _queryHandlers.add(handler);
    _cachedQueryHandlers.clear();
  }

  void registerValidator<TRequest>(IValidator<TRequest> validator) {
    assert(
      !_validators.any((v) => v.runtimeType == validator.runtimeType),
      'Validator ${validator.runtimeType} is already registered.',
    );
    _validators.add(validator);
    _cachedValidators.clear();
  }

  void addBehavior(IPipelineBehavior behavior) {
    _behaviors.add(behavior);
  }

  ICommandHandler<ICommand<TResult>, TResult>? _findCommandHandler<TResult>(ICommand<TResult> command) {
    final cached = _cachedCommandHandlers[command.runtimeType];
    if (cached != null) {
      return cached as ICommandHandler<ICommand<TResult>, TResult>;
    }

    for (final handler in _commandHandlers) {
      if (handler.canHandle(command)) {
        _cachedCommandHandlers[command.runtimeType] = handler;
        return handler as ICommandHandler<ICommand<TResult>, TResult>;
      }
    }
    return null;
  }

  IQueryHandler<IQuery<TResult>, TResult>? _findQueryHandler<TResult>(IQuery<TResult> query) {
    final cached = _cachedQueryHandlers[query.runtimeType];
    if (cached != null) {
      return cached as IQueryHandler<IQuery<TResult>, TResult>;
    }

    for (final handler in _queryHandlers) {
      if (handler.canHandle(query)) {
        _cachedQueryHandlers[query.runtimeType] = handler;
        return handler as IQueryHandler<IQuery<TResult>, TResult>;
      }
    }
    return null;
  }

  List<IValidator<dynamic>> getValidators(dynamic request) {
    final cached = _cachedValidators[request.runtimeType];
    if (cached != null) {
      return cached;
    }

    final matched = _validators.where((v) => v.canValidate(request)).toList();
    _cachedValidators[request.runtimeType] = matched;
    return matched;
  }

  Future<Result<TResult>> send<TResult>(ICommand<TResult> command) async {
    final handler = _findCommandHandler(command);
    if (handler == null) {
      return Result.failure(
        AppFailure.unexpected('No command handler registered for: ${command.runtimeType}'),
      );
    }

    Future<Result<TResult>> runPipeline(int index) async {
      if (index < _behaviors.length) {
        return _behaviors[index].handle<ICommand<TResult>, TResult>(
          command,
          () => runPipeline(index + 1),
        );
      }
      return handler.handle(command);
    }

    try {
      return await runPipeline(0);
    } on DioException catch (e) {
      return Result.failure(
        AppFailure.server(statusCode: e.response?.statusCode ?? 0, message: e.message),
      );
    } catch (e) {
      return Result.failure(AppFailure.unexpected(e));
    }
  }

  Future<Result<TResult>> query<TResult>(IQuery<TResult> query) async {
    final handler = _findQueryHandler(query);
    if (handler == null) {
      return Result.failure(
        AppFailure.unexpected('No query handler registered for: ${query.runtimeType}'),
      );
    }

    Future<Result<TResult>> runPipeline(int index) async {
      if (index < _behaviors.length) {
        return _behaviors[index].handle<IQuery<TResult>, TResult>(
          query,
          () => runPipeline(index + 1),
        );
      }
      return handler.handle(query);
    }

    try {
      return await runPipeline(0);
    } on DioException catch (e) {
      return Result.failure(
        AppFailure.server(statusCode: e.response?.statusCode ?? 0, message: e.message),
      );
    } catch (e) {
      return Result.failure(AppFailure.unexpected(e));
    }
  }
}



import 'package:enterprise_management/shared_kernel/cqrs/command.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

abstract class ICommandHandler<TCommand extends ICommand<TResult>, TResult> {
  const ICommandHandler();

  bool canHandle(ICommand command) => command is TCommand;

  Future<Result<TResult>> handle(TCommand command);
}

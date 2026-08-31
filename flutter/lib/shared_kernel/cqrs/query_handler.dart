import 'package:enterprise_management/shared_kernel/cqrs/query.dart';
import 'package:enterprise_management/shared_kernel/result/result.dart';

abstract class IQueryHandler<TQuery extends IQuery<TResult>, TResult> {
  const IQueryHandler();

  bool canHandle(IQuery query) => query is TQuery;

  Future<Result<TResult>> handle(TQuery query);
}

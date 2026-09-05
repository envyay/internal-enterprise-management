import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/repositories/providers.dart';
import 'package:enterprise_management/presentation/router/app_router.dart';
import 'package:enterprise_management/presentation/router/app_router.gr.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class AuthInterceptor extends Interceptor {
  const AuthInterceptor({required this.ref});

  final Ref ref;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await ref.read(userRepositoryProvider).getAccessToken();
    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $accessToken';
    }
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      /// TODO: hien thi dialog dang nhap lai
      final appRouter = ref.read(appRouterProvider);
      appRouter.popUntilRoot();
      appRouter.replace(AuthenticationRoute());
    }

    return handler.next(err);
  }
}
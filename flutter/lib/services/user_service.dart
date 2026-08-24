import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: 'http://localhost:5000/api/Users/')
abstract class  RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @POST('LoginRequest')
  Future<dynamic> login(@Body() Map<String, dynamic> body);
}
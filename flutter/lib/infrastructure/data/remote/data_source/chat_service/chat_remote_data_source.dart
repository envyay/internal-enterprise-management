import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:enterprise_management/infrastructure/data/dtos/api_requests/chat_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'chat_remote_data_source.g.dart';
@RestApi()
abstract class ChatRemoteDataSource {
  factory ChatRemoteDataSource(Dio dio, {String? baseUrl}) = _ChatRemoteDataSource;

  @POST('Chat')
  @DioResponseType(ResponseType.stream)
  Stream<Uint8List> chat(@Body() ChatDto body);
}
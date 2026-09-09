import 'package:enterprise_management/infrastructure/data/remote/data_source/ticket_service/ticket_remote_data_source.dart';
import 'package:enterprise_management/infrastructure/data/remote/http_clients/app_dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';
String _baseUrl(String path){
  return '/api/$path/';
}

@Riverpod(keepAlive: true)
TicketRemoteDataSource ticketRemote(Ref ref){
  final dio = ref.watch(appDioProvider);
  return TicketRemoteDataSource(dio, baseUrl: _baseUrl('Tickets'));
}